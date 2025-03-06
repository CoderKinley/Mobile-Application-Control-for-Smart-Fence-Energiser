import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class EnergizerEvent extends StatelessWidget {
  const EnergizerEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Icon(CupertinoIcons.power),
      ),
    );
  }
}
