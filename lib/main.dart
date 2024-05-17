import 'package:flutter/material.dart';
import 'package:new_vibby/directory.dart';
import 'package:new_vibby/logs.dart';
import 'package:new_vibby/notif.dart';
import 'package:new_vibby/play.dart';
import 'package:new_vibby/todo.dart';
import 'home.dart';
import 'groups.dart';
import 'draw.dart';
import 'community.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vibby Diary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/groups': (context) => GroupsPage(),
        '/draw': (context) => DrawingPage(),
        '/community': (context) => CommunityPage(),
        '/profile': (context) => ProfilePage(),
        '/notif': (context) => NotificationPage(),
        '/directory': (context) => DirectoryPage(),
        '/logs': (context) => Logs(),
        '/todo': (context) => Todo(),
        '/play': (context) => SnakeGame(),
        // Add routes for other screens as needed
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // You can remove this line
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/splash.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Get Started'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
