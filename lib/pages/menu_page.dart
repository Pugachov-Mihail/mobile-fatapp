import 'package:flutter/material.dart';
import 'package:mobile_app/pages/person_page.dart';
import 'package:mobile_app/pages/trenning_list_page.dart';
import '../components/nav_bar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    TrenningListPage(),
    TrenningListPage(),
    PersonPage()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar:  ButtonNavBar(
        onTabTapped: _onTabTapped,
        currentIndex: _currentIndex,
      ),
      body: _pages[_currentIndex],
    );
  }
}