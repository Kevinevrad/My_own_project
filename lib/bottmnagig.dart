import 'dart:collection';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  void currentState(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color Couleur = Color(0xFFEFEFEF);

    return Container(
      height: 65,
      decoration: BoxDecoration(),
      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Material(
          color: Colors.grey,
          shape: StadiumBorder(),
          child: 
          
          BottomNavigationBar(
            elevation: 15,
            onTap: currentState,
            selectedIconTheme: IconThemeData(color: Couleur),
            backgroundColor: Colors.transparent,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_shopping_cart_sharp), label: 'Shopping')
            ],
          )),
    );
  }
}
