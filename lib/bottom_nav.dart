import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.group,
    Icons.palette,
    Icons.forum,
    Icons.person,
  ];

  final List<String> _routes = [
    '/home',
    '/groups',
    '/draw',
    '/community',
    '/profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_icons.length, (index) {
          return IconButton(
            icon: Icon(_icons[index]),
            onPressed: () {
              setState(() {
                _selectedIndex = index;
              });
              Navigator.pushNamed(context, _routes[index]);
            },
            color: _selectedIndex == index
                ? Color(0xFF5C00A4)
                : Colors.black.withOpacity(0.5),
          );
        }),
      ),
    );
  }
}
