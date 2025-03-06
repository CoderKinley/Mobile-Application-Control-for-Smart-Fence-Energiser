import 'package:flutter/material.dart';
import 'package:fuzzyenergizer/components/bottom_nav_bar.dart';
import 'package:fuzzyenergizer/intro_page/event_notifications.dart';
import 'package:fuzzyenergizer/intro_page/homey_list.dart';
import 'package:fuzzyenergizer/intro_page/map_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // method to update the selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    const EnergizerEvent(),
    const EnergizerMap(),
    const EnergizerNotification(),
  ];

  // titles to display
  final List<String> _titles = [
    'Energizer Event',
    'Energizer Map',
    'Energizer Notification',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "lib/images/fuzzy_automation_logo.jpg",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text("Home"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: Text("Map"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: Text("Settings"),
                  ),
                ),
              ],
            ),
            // labellings
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      // bottom navigation bar
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
