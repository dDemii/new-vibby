import 'package:flutter/material.dart';
import 'bottom_nav.dart'; // Import the BottomNav widget
import 'upper_nav.dart'; // Import the UpperNav widget
import 'directory.dart'; // Import the Directory widget
import 'diary_page.dart'; // Import the DiaryPage widget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UpperNav(),
          Container(
            height: 90, // Set a fixed height
            child: DirectoryPage(),
          ),
          Expanded(
            child: DiaryPage(),
          ),
          // Other content of the home page
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
