import 'package:flutter/material.dart';
import 'package:new_vibby/notif.dart';

class UpperNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 374,
          height: 100,
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 40,
                child: Container(
                  width: 72.92,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/vibbytxt.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 25,
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    size: 30, // Increase icon size
                    color: Colors.black, // Change icon color
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
