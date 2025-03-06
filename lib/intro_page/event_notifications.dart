import "package:flutter/material.dart";

class EnergizerNotification extends StatelessWidget {
  const EnergizerNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const ListTile(
                title: Text("Real Time Energizer data"),
                subtitle: Text("Data of voltage"),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          );
        },
      ),
    );
  }
}
