import 'package:flutter/material.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        showUnselectedLabels: true,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,),
            label: "Notifications", 
          ),
        ],
      ),
    );
  }
}