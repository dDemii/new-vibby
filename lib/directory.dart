import 'package:flutter/material.dart';

class DirectoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(10, -10),
      child: Column(
        children: [
          Container(
            width: 320,
            height: 90,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: _buildClickableDirectoryItem(
                    context,
                    iconColor: Color(0xFF4CA3F3),
                    iconName: Icons.book,
                    itemName: 'Diary Logs',
                    routeName: '/logs',
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 0,
                  child: _buildClickableDirectoryItem(
                    context,
                    iconColor: Color(0xFF4FF34C),
                    iconName: Icons.check_circle,
                    itemName: 'To Do \nList',
                    routeName: '/todo',
                  ),
                ),
                Positioned(
                  left: 210,
                  top: 0,
                  child: _buildClickableDirectoryItem(
                    context,
                    iconColor: Color(0xFFF3D84C),
                    iconName: Icons.videogame_asset,
                    itemName: 'Play\nSnakes',
                    routeName: '/play',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClickableDirectoryItem(
    BuildContext context, {
    required Color iconColor,
    required IconData iconName,
    required String itemName,
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: _buildDirectoryItem(
        iconColor: iconColor,
        iconName: iconName,
        itemName: itemName,
      ),
    );
  }

  Widget _buildDirectoryItem({
    required Color iconColor,
    required IconData iconName,
    required String itemName,
  }) {
    return Container(
      width: 90,
      height: 90,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xFFCCCCCC),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: Container(
              width: 24,
              height: 24,
              padding: EdgeInsets.all(3),
              decoration: ShapeDecoration(
                color: iconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Icon(
                iconName,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 40,
            child: SizedBox(
              width: 70,
              child: Text(
                itemName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  letterSpacing: 0.75,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
