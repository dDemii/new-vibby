import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: const Text(
          'To Do List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 360,
            child: CarouselSlider(
              items: [
                // 1st Image of Slider
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page for the 'All' category
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Todo()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFF370047),
                    ),
                    child: const Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // 2nd Image of Slider
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page for the 'Important' category
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImportantPage()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 30, 12, 59),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Important',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                // 3rd Image of Slider
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page for the 'Org Task' category
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OrgTask()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 30, 12, 59),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Org Task',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                // 4th Image of Slider
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page for the 'My Lectures' category
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyLectures()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 30, 12, 59),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Lectures',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                // 5th Image of Slider
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page for the 'Arya's List' category
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyList()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 30, 12, 59),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Arya\'s List',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 60.0,
                enlargeCenterPage: false,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.34,
                initialPage: 1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImportantPage()),
                  );
                },
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.white,
                  margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  color: const Color(0xFF8E9CD5),
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.horizontal_rule_rounded,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 15), // Adjust the padding here
                                    child: Text(
                                      'Important',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 0), // Adjust the padding here
                                    child: Text(
                                      'Updated 2h ago',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Color(
                                      0xFFA6B7F7), // Choose your desired background color
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 5, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Buy Food'),
                                  Text('Invest'),
                                  Text('Deposit Money'),
                                  Text('Gym'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrgTask()),
                  );
                },
                child: const Card(
                  elevation: 50,
                  shadowColor: Colors.white,
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                  color: Color(0xFFBB9CC0),
                  child: SizedBox(
                    width: 150,
                    height: 200,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Org Tasks',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '11/08/2023',
                          ),
                          SizedBox(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 5, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Permits'),
                                  Text('IGPs'),
                                  Text('Photoshoot'),
                                  Text('Budget'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyLectures()),
                  );
                },
                child: const Card(
                  elevation: 50,
                  shadowColor: Colors.white,
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                  color: Color(0xFF8E9CD5),
                  child: SizedBox(
                    width: 350,
                    height: 90,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'Lectures',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              Text('08/25/2023')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyList()),
                  );
                },
                child: const Card(
                  elevation: 50,
                  shadowColor: Colors.white,
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                  color: Color(0xFFE7BCDE),
                  child: SizedBox(
                    width: 350,
                    height: 90,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'Arya\'s List',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              Text('08/20/2023')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImportantPage extends StatelessWidget {
  const ImportantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Important'),
        toolbarTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Card(
            color: Color(0xFF8E9CD5), // Set the background color to blue
            margin: EdgeInsets.fromLTRB(
                20, 0, 20, 5), // Add margin for better visual appearance
            child: SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      '17/12/2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    ListItem(text: 'Buy Food'),
                    ListItemChecked(text: 'Invest'),
                    ListItem(text: 'Deposit Money'),
                    ListItemChecked(text: 'Gym'),
                    // Add more items as needed
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFFBB9CC0),
            margin: EdgeInsets.fromLTRB(
                20, 0, 20, 5), // Add margin for better visual appearance
            child: SizedBox(
              height: 100,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '16/11/2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    ListItemChecked(text: 'Submit Final Project'),
                    ListItemChecked(text: 'Buy Sunscreen'),
                    // Add more items as needed
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFF8E9CD5), // Set the background color to blue
            margin: EdgeInsets.fromLTRB(
                20, 0, 20, 5), // Add margin for better visual appearance
            child: SizedBox(
              height: 150,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '15/12/2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    ListItemChecked(text: 'Buy Bus Tickets'),
                    ListItemChecked(text: 'Book AirBnb'),
                    ListItemChecked(text: 'Withdraw Money'),
                    ListItemChecked(text: 'Buy Essentials'),
                    // Add more items as needed
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFFBB9CC0),
            margin: EdgeInsets.fromLTRB(
                20, 0, 20, 5), // Add margin for better visual appearance
            child: SizedBox(
              height: 100,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '15/12/2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    ListItemChecked(text: 'Download Flutter'),
                    ListItemChecked(text: 'Make TikTok Content'),

                    // Add more items as needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class OrgTask extends StatelessWidget {
  const OrgTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organization Tasks'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Card(
            color: Color(0xFF8E9CD5), // Set the background color to blue
            margin: EdgeInsets.fromLTRB(
                20, 10, 20, 5), // Add margin for better visual appearance
            child: SizedBox(
              height: 180,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TACTICS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    OrgTaskItemChecked(text: 'Finalize Concept Paper'),
                    OrgTaskItemChecked(text: 'Canvass Materials'),
                    OrgTaskItem(text: 'Submit Concept Paper'),
                    OrgTaskItem(text: 'Send a letter to Sir Adrian'),
                    // Add more items as needed
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFFBB9CC0), // Set the background color to blue
            margin: EdgeInsets.fromLTRB(
                20, 0, 20, 5), // Add margin for better visual appearance
            child: SizedBox(
              height: 180,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ateneo Dance Club',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    OrgTaskItemChecked(text: 'Order Costumes'),
                    OrgTaskItemChecked(text: 'Submit Registration Forms'),
                    OrgTaskItem(text: 'Create a short choreography'),
                    OrgTaskItem(text: 'Mix music'),
                    // Add more items as needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class OrgTaskItem extends StatelessWidget {
  final String text;

  const OrgTaskItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Left-align the items
        children: [
          Icon(Icons
              .check_box_outline_blank), // You can use your own checkbox icon
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}

class OrgTaskItemChecked extends StatelessWidget {
  final String text;

  const OrgTaskItemChecked({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Left-align the items
        children: [
          Icon(Icons.check_box_outlined), // You can use your own checkbox icon
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}

class MyLectures extends StatelessWidget {
  const MyLectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Lectures'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            // Replace the following with your actual lecture content
            LectureItem(title: 'Introduction to Flutter', date: '2023-01-15'),
            LectureItem(title: 'Advanced Dart Programming', date: '2023-02-01'),
            LectureItem(
                title: 'State Management in Flutter', date: '2023-02-15'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the logic for adding a new lecture
          // You can navigate to a new screen or show a dialog for adding lecture details
          // For now, let's print a message
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class LectureItem extends StatelessWidget {
  final String title;
  final String date;

  const LectureItem({
    required this.title,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFBB9CC0),
      elevation: 5.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('Date: $date'),
        onTap: () {
          // Add your navigation logic here if needed
        },
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arya\'s List'),
        centerTitle: true,
      ),
      body: Card(
        color: Color(0xFF8E9CD5), // Set the background color to blue
        margin: EdgeInsets.fromLTRB(
            20, 10, 20, 5), // Add margin for better visual appearance
        child: SizedBox(
          height: 180,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Arya\'s List',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 5.0),
                OrgTaskItemChecked(text: 'Cersei Lannister'),
                OrgTaskItemChecked(text: 'Walder Frey'),
                OrgTaskItem(text: 'The Mountain'),
                OrgTaskItem(text: 'Joffrey Baratheon'),
                // Add more items as needed
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String text;

  const ListItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons
              .check_box_outline_blank), // You can use your own checkbox icon
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ListItemChecked extends StatelessWidget {
  final String text;

  const ListItemChecked({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check_box_outlined), // You can use your own checkbox icon
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ImportantCardContent extends StatelessWidget {
  const ImportantCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Important',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Update 2h ago',
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 5, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Buy Food'),
                Text('Invest'),
                Text('Deposit Money'),
                Text('Gym'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
