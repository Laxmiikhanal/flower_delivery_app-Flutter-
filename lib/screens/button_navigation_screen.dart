import 'package:flutter/material.dart';

import 'package:flower_delivery_app/screens/button_screens/homepage_screen.dart';
import 'package:flower_delivery_app/screens/button_screens/mycart_screen.dart';
import 'package:flower_delivery_app/screens/button_screens/profile_screen.dart';
import 'package:flower_delivery_app/screens/button_screens/Discoverflower_screen.dart';

class ButtonNavigationScreen extends StatefulWidget {
  const ButtonNavigationScreen({super.key});

  @override
  State<ButtonNavigationScreen> createState() => _ButtonNavigationScreenState();
}

class _ButtonNavigationScreenState extends State<ButtonNavigationScreen> {
  int _index = 0;

  final List<Widget> _pages = const [
    HomePage(),             
    MycartScreen(),         
    DiscoverFlowersPage(),
    ProfileScreen(),        
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() => _index = value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: "Offer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: "Menu",
          ),
        ],
      ),
    );
  }
}
