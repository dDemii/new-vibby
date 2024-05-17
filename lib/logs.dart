import 'package:flutter/material.dart';

class Logs extends StatelessWidget {
  const Logs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: const Text(
          'Logs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Scrollbar(
        thumbVisibility: true,
        thickness: 3,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 50,
                  shadowColor: Colors.transparent,
                  color: Color(0xFFD6EDD0),
                  child: SizedBox(
                    width: 350,
                    height: 110,
                    child: Padding(
                      padding: EdgeInsets.all(5), // Adjust padding as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image widget goes here
                          Column(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/mood/meh.png',
                                    width:
                                        50, // Adjust the width of the image as needed
                                    height:
                                        50, // Adjust the height of the image as needed
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              // Container to wrap the text
                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Color(0xFF9DE08B),
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                                child: Center(
                                  child: Text(
                                    'Saturday, December 25, 2023',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  shadowColor: Colors.transparent,
                  color: Color(0xFFF4F4E2),
                  child: SizedBox(
                    width: 350,
                    height: 110,
                    child: Padding(
                      padding: EdgeInsets.all(5), // Adjust padding as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image widget goes here
                          Column(
                            children: [
                              Image.asset(
                                'assets/mood/happy.png',
                                width:
                                    50, // Adjust the width of the image as needed
                                height:
                                    50, // Adjust the height of the image as needed
                              ),
                              SizedBox(
                                  height:
                                      10), // Add some space between the image and text
                              // Container to wrap the text
                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  // You can customize the container's decoration
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Color(0xFFFFE7AA),
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                                child: Center(
                                  child: Text(
                                    'Wednesday, December 6, 2023',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  shadowColor: Colors.transparent,
                  color: Color(0xFFE2E9F4),
                  child: SizedBox(
                    width: 350,
                    height: 110,
                    child: Padding(
                      padding: EdgeInsets.all(5), // Adjust padding as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image widget goes here
                          Column(
                            children: [
                              Image.asset(
                                'assets/mood/sad.png',
                                width:
                                    50, // Adjust the width of the image as needed
                                height:
                                    50, // Adjust the height of the image as needed
                              ),
                              SizedBox(
                                  height:
                                      10), // Add some space between the image and text
                              // Container to wrap the text
                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  // You can customize the container's decoration
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Color(0xFFAAD1FF),
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                                child: Center(
                                  child: Text(
                                    'Friday, December 1, 2023',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  shadowColor: Colors.transparent,
                  color: Color(0xFFF4E3E2),
                  child: SizedBox(
                    width: 350,
                    height: 350, // Adjust the height as needed
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Image widget and Container go here
                          Container(
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xFFFFAFAA),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Image widget
                                Image.asset(
                                  'assets/mood/angry.png',
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                    width:
                                        5), // Add some space between the image and text
                                // Text inside the Container
                                Text(
                                  'Saturday, December 25, 2023',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 5), // Add some space between the content
                          // Image widget
                          Image.asset(
                            'assets/images/coffee.jpg',
                            width: 350,
                            height: 200,
                          ),
                          SizedBox(
                              height:
                                  0), // Add some space between the image and text
                          // Text
                          Center(
                            child: const Text(
                              'today, i spilled my coffee on my laptop. \ni was so angry because i couldnt fix my \nlaptop anymore',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
