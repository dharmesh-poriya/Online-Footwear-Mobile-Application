import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    int currentIndexValue = 0;

    return BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.60),
        selectedFontSize: 14,
        currentIndex: currentIndexValue,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            currentIndexValue = value;
          });
          print("Taped on $currentIndexValue");
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: const Icon(Icons.home),
          ),

          BottomNavigationBarItem(
            label: 'Categories',
            icon: const Icon(Icons.category),

          ),

          BottomNavigationBarItem(
              label: 'Cart',
              icon: const Icon(Icons.shopping_cart)
          ),

          BottomNavigationBarItem(
              label: 'Notification',
              icon: const Icon(Icons.notifications)
          ),

          BottomNavigationBarItem(
            label: 'Account',
            icon: const Icon(Icons.account_circle),
          ),
        ]
    );
  }
}