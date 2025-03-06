import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MQTTWidget extends StatefulWidget {
  @override
  _MQTTWidgetState createState() => _MQTTWidgetState();
}

class _MQTTWidgetState extends State<MQTTWidget> {
  late MqttServerClient client;
  String statusText = "Disconnected";
  String receivedMessage = "";

  @override
  void initState() {
    super.initState();
    connectToMQTT();
  }

  void connectToMQTT() async {
    client = MqttServerClient('119.2.105.142', 'flutter_client');
    client.port = 1883;
    client.logging(on: true);
    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    client.onSubscribed = onSubscribed;
    client.pongCallback = pong;

    final connMessage = MqttConnectMessage()
        .withWillTopic('willtopic')
        .withWillMessage('Will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);

    client.connectionMessage = connMessage;

    try {
      await client.connect();
    } catch (e) {
      print('Exception: $e');
      client.disconnect();
    }

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      print('MQTT client connected');
      setState(() {
        statusText = "Connected";
      });
      subscribeToTopic();
    } else {
      print(
          'MQTT client connection failed - disconnecting, status is ${client.connectionStatus}');
      client.disconnect();
      setState(() {
        statusText = "Failed to connect";
      });
    }

    client.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage message = c[0].payload as MqttPublishMessage;
      final payload =
          MqttPublishPayload.bytesToStringAsString(message.payload.message);

      setState(() {
        receivedMessage = payload;
      });
      print('Received message: $payload from topic: ${c[0].topic}>');
    });
  }

  void subscribeToTopic() {
    client.subscribe("Energizer/data", MqttQos.atMostOnce);
  }

  void onConnected() {
    print('Connected');
  }

  void onDisconnected() {
    print('Disconnected');
  }

  void onSubscribed(String topic) {
    print('Subscribed to topic: $topic');
  }

  void pong() {
    print('Ping response client callback invoked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MQTT Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Status: $statusText'),
            SizedBox(height: 20),
            Text('Received message: $receivedMessage'),
          ],
        ),
      ),
    );
  }
}
