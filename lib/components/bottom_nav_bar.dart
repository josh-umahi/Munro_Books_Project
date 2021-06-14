import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Color(0xFFE5E5E5)),
        ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Explore",
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
