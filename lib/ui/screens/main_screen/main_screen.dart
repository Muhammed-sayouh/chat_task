import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/ui/screens/home_screen/home_screen.dart';

import '../../theme/style/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
 
  static const List<Widget> _widgetOptions = <Widget>[
  HomeScreen(),
    Text(
      '',
    ),
    Text(
      '',
    ),
    Text(
      '',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: AppColors.lightGray,
        elevation: 60,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle_fill),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.mainBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
