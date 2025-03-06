import "package:flutter/material.dart";
import "package:fuzzyenergizer/intro_page/intro_page.dart";
import "package:flutter/services.dart";
import 'package:mqtt_client/mqtt_client.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
