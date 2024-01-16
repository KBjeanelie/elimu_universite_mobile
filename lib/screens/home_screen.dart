import 'package:elimu_universite_mobile/config/themes.dart';
import 'package:elimu_universite_mobile/screens/dashboard_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  
  static const List<Widget> _widgetOptions =  <Widget>[
    DashBoardScreen(),
    DashBoardScreen(),
    DashBoardScreen(),
    DashBoardScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: customeTextStyle("Bonjour, Ruth", size: 17),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: customeIcon(IconlyLight.notification),
            ),
          )
        ],
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
        onPressed: (){},
        child: customeIcon(EvaIcons.plus, color: white, iconSize: 30),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        currentIndex: _currentIndex,
        elevation: 1,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 13,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: customeIcon(IconlyLight.home),
            activeIcon: customeIcon(IconlyBold.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: customeIcon(IconlyLight.message),
            activeIcon: customeIcon(IconlyBold.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: customeIcon(IconlyLight.calling),
            activeIcon: customeIcon(IconlyBold.calling),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: customeIcon(IconlyLight.profile),
            activeIcon: customeIcon(IconlyBold.profile),
            label: '',
          ),
        ],
      ),
    );
  }
}