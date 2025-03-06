import "package:flutter/material.dart";
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class EnergizerMap extends StatelessWidget {
  const EnergizerMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            // 26.856582040368547, 89.39347273259362
            options: const MapOptions(
                keepAlive: true,
                initialCenter: LatLng(26.85658, 89.39347),
                initialZoom: 17),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
