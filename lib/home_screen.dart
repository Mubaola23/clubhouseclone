import 'package:clubhouseclone/dashboard.dart';
import 'package:clubhouseclone/nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _children = [
    Text('1'),
    StartRoom(),
    Text('3'),
  ];

  int _currentPage = 1;

  void onTabSelected(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentPage],
      bottomNavigationBar: NavBar(
        backgroundColor: Color(0xffF8F7FD),
        color: Color(0xff312C43),
        selectedColor: Colors.white,
        onTabSelected: onTabSelected,
        items: [
          NavBarItem(iconData: Icons.calendar_today_outlined, text: ''),
          NavBarItem(iconData: Icons.add_circle, text: 'Start Room'),
          NavBarItem(iconData: Icons.person_outline, text: ''),
        ],
      ),
    );
  }
}
