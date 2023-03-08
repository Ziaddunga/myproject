import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CartScreen.dart';
import 'Catigory_screen.dart';
import 'HomeScreen.dart';
import 'UserScreen.dart';

class bottomNavigation extends StatefulWidget {
  static const String screenRoute = 'Navigationbar';
  bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int currentindex = 0;
  final screens = [
    HomeScreen(),
    CartView(),
    CategoryScreen(),
    UserScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
            print("index");
          },
          elevation: 0,
          selectedItemColor: Colors.blue[700],
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(
              fontSize: 11, color: Color.fromARGB(255, 0, 0, 0)),
          unselectedItemColor: Colors.blue[900],
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 20,
                ),
                label: "Collections"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                  size: 20,
                ),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervisor_account_outlined,
                  size: 20,
                ),
                label: "Profile"),
          ]),
    );
  }
}
