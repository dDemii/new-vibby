import 'package:flutter/material.dart';
import 'bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfileSettingsPageState createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfilePage> {
  bool isNotificationsOn = true;
  bool isSessionHistoryOn = true;
  bool isCustomizeOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF9F9F9),
        child: ListView(
          padding: EdgeInsets.only(top: 40),
          children: [
            // Profile Picture with Border
            Center(
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF5C00A4),
                    width: 1,
                  ),
                ),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            SizedBox(height: 20),

            // User Information Container with special styling for the "Edit" button
            SpecialProfileInfoContainer(
              title: 'Name, Username, Birthday, Email, Password',
              buttonText: 'Edit',
              onPressed: () {
                // Implement edit functionality
              },
            ),

            // How you use Vibby
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFF5C00A4),
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes the position of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Text
                  Text(
                    'How you use Vibby',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Row for the icons and text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the top
                    children: [
                      // First Column (left-aligned)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.notifications, size: 20),
                          SizedBox(height: 6),
                          Icon(Icons.lock, size: 20),
                          SizedBox(height: 6),
                          Icon(Icons.edit, size: 20),
                          SizedBox(height: 6),
                        ],
                      ),
                      SizedBox(width: 15),
                      // Second Column (left-aligned)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notifications',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height: 7), // Adjusted the spacing between texts
                          Text(
                            'Privacy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height: 7), // Adjusted the spacing between texts
                          Text(
                            'Customize',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      // Third Column (right-aligned)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Toggle button for the second row
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCustomizeOn = !isCustomizeOn;
                                // Add your logic to handle the toggle state
                              });
                            },
                            child: Icon(
                              isCustomizeOn
                                  ? Icons.toggle_on
                                  : Icons.toggle_off,
                              color: isCustomizeOn
                                  ? Color(0xFF5C00A4)
                                  : Colors.grey, // Change colors as needed
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isSessionHistoryOn = !isSessionHistoryOn;
                                // Navigate to PasscodeEntryScreen when Privacy toggle is tapped
                                if (isSessionHistoryOn) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PasscodeEntryScreen()),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              isSessionHistoryOn
                                  ? Icons.toggle_on
                                  : Icons.toggle_off,
                              color: isSessionHistoryOn
                                  ? Color(0xFF5C00A4)
                                  : Colors.grey, // Change colors as needed
                            ),
                          ),
                          // Chevron button (you can customize the icon as needed)
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // More info and support
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFF5C00A4),
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes the position of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Text
                  Text(
                    'More info and support',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Row for the icons and text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the top
                    children: [
                      // First Column (left-aligned)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.help, size: 19),
                          SizedBox(height: 7),
                          Icon(Icons.info, size: 19),
                        ],
                      ),
                      SizedBox(width: 15),
                      // Second Column (left-aligned)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Help',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height: 9), // Adjusted the spacing between texts
                          Text(
                            'About',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      // Third Column (right-aligned)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.chevron_right),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Sign Out Button (moved to the bottom)
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ElevatedButton(
                onPressed: () {
                  // Implement sign-out functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5C00A4),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5), // Ensure the same radius here
                  ),
                ),
                child: Text('Sign Out', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class SpecialProfileInfoContainer extends StatelessWidget {
  final String title;
  final String buttonText;
  final VoidCallback onPressed;

  const SpecialProfileInfoContainer({
    required this.title,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFF5C00A4),
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 4,
            offset: Offset(0, 3), // changes the position of the shadow
          ),
        ],
      ),
      child: SpecialProfileInfoContent(
        title: title,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }
}

class SpecialProfileInfoContent extends StatelessWidget {
  final String title;
  final String buttonText;
  final VoidCallback onPressed;

  const SpecialProfileInfoContent({
    required this.title,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Stack(
        children: [
          // Row for the first two columns
          Row(
            children: [
              // First Column
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      title.split(', ').map((item) => Text(item)).toList(),
                ),
              ),
              // Space between columns
              SizedBox(width: 20),
              // Second Column
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Maria Joana Mae'),
                    Text('mariyaA192'),
                    Text('December 24, 2000'),
                    Text('mariajoanamae@gmail.com'),
                    Text('M*************'),
                  ],
                ),
              ),
            ],
          ),
          // Edit Button in the third column
          Positioned(
            right: 0.1,
            child: Container(
              width: 75,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFF5C00A4),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  alignment:
                      Alignment.center, // Align text in the middle vertically
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Color(0xFF5C00A4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasscodeEntryScreen extends StatefulWidget {
  @override
  _PasscodeEntryScreenState createState() => _PasscodeEntryScreenState();
}

class _PasscodeEntryScreenState extends State<PasscodeEntryScreen> {
  String enteredPasscode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Color(0xFFF9F9F9),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your Passcode',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40), // Adjusted spacing
              _buildPasscodeField(),
              SizedBox(height: 10), // Adjusted spacing
              _buildPasscodeButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasscodeField() {
    const double lineWidth =
        17; // Adjust this value for the desired horizontal spacing

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(4, (index) {
        return Container(
          width: lineWidth,
          height: 2,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color:
                    index < enteredPasscode.length ? Colors.black : Colors.grey,
                width: 2,
              ),
            ),
          ),
          child: Center(
            child: Text(
              index < enteredPasscode.length ? '*' : '',
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildPasscodeButtons() {
    return Column(
      children: [
        SizedBox(height: 60), // Adjusted vertical spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildPasscodeButton('1'),
            _buildPasscodeButton('2'),
            _buildPasscodeButton('3'),
          ],
        ),
        SizedBox(height: 15), // Adjusted vertical spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildPasscodeButton('4'),
            _buildPasscodeButton('5'),
            _buildPasscodeButton('6'),
          ],
        ),
        SizedBox(height: 15), // Adjusted vertical spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildPasscodeButton('7'),
            _buildPasscodeButton('8'),
            _buildPasscodeButton('9'),
          ],
        ),
        SizedBox(height: 15), // Adjusted vertical spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildPasscodeButton(''),
            _buildPasscodeButton('0'),
            _buildPasscodeButton('⌫', onPressed: _erasePasscode),
          ],
        ),
      ],
    );
  }

  Widget _buildPasscodeButton(String label, {VoidCallback? onPressed}) {
    return TextButton(
      onPressed: () {
        _onPasscodeButtonPressed(label);
        if (onPressed != null) onPressed();
      },
      child: Text(
        label,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  void _onPasscodeButtonPressed(String label) {
    setState(() {
      if (label == '⌫') {
        if (enteredPasscode.isNotEmpty) {
          enteredPasscode =
              enteredPasscode.substring(0, enteredPasscode.length - 1);
        }
      } else if (enteredPasscode.length < 4) {
        enteredPasscode += label;
        if (enteredPasscode.length == 4) {
          if (_checkPasscode(enteredPasscode)) {
            Navigator.pop(context);
          } else {
            enteredPasscode = "";
          }
        }
      }
    });
  }

  void _erasePasscode() {
    setState(() {
      enteredPasscode = "";
    });
  }

  bool _checkPasscode(String passcode) {
    return passcode == '1234';
  }
}
