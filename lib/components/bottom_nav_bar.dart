import "package:flutter/material.dart";
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        duration: const Duration(milliseconds: 600),
        iconSize: 30.0,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        onTabChange: (value) =>
            onTabChange!(value), // Changes the values on click
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.location_on,
            text: "Map",
          ),
          GButton(
            icon: Icons.notification_add,
            text: "Notification",
          )
        ],
      ),
    );
  }
}
