import 'package:flutter/material.dart';
import 'package:flutter_app/Account/profilePage.dart';
import 'package:flutter_app/basketPage.dart';
import 'package:flutter_app/storePage.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    StorePage(),
    BasketPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: '', // Assurez-vous que label est défini
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: '', // Assurez-vous que label est défini
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '', // Assurez-vous que label est défini
          ),
        ],
      ),
    );
  }
}