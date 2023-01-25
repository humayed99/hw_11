import 'package:flutter/material.dart';
import 'package:hw_11/pages/profile.dart';

import 'cart.dart';
import 'products_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = const ProfilePage();
    } else if (currentIndex == 1) {
      body = const CartPage();
    } else {
      body = const ProductsPage();
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;

          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
        ],
      ),
      body: body,
    );
  }
}
