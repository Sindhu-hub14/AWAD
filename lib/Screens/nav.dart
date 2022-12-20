import 'package:flutter/material.dart';
import './past words.dart';
import './word.dart';
import './settings.dart';
import '../sbmpages/sidebar.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  final screens = [
    WordPage(),
    PastWordsPage(),
    SettingsPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.account_box),
          ),
        ],
        title: Text('A Word A Day'),
        centerTitle: true,
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 30,
        selectedFontSize: 17,
        unselectedFontSize: 12,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Word',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wordpress),
            label: 'Past Words',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
