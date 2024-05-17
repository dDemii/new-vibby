import 'package:flutter/material.dart';
import 'package:new_vibby/community.dart';
import 'bottom_nav.dart';

class GroupsPage extends StatefulWidget {
  @override
  _VirtualSupportGroupPageState createState() =>
      _VirtualSupportGroupPageState();
}

class ConversationPage extends StatefulWidget {
  final String contactName;

  const ConversationPage({Key? key, required this.contactName})
      : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  List<ChatMessage> messages = [];
  TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Hardcoded initial messages
    messages.add(ChatMessage(text: 'Hello!', isMe: true));
    messages.add(ChatMessage(text: 'Hey!', isMe: false));
    messages.add(ChatMessage(text: 'My name is Wonyoung.', isMe: true));
    messages.add(ChatMessage(
        text: 'Nice to meet you, Wonyoung. Welcome to this conversation!',
        isMe: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contactName),
      ),
      body: Column(
        children: [
          // List of Messages
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: messages.map((message) {
                return _buildMessage(
                  isMe: message.isMe,
                  text: message.text,
                );
              }).toList(),
            ),
          ),
          // Input field for typing messages
          _buildMessageInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage({required bool isMe, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isMe) // Show avatar only for messages from the other person
          Container(
            margin:
                EdgeInsets.only(right: 8.0, top: 25.0), // Move the avatar lower
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF5C00A4), width: 1.0),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.person, // You can use any other icon here
                    color: Color(0xFF5C00A4),
                  ),
                ),
              ],
            ),
          ),
        Expanded(
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              if (!isMe) // Show sender's name only for messages from the other person
                Text(
                  'Annie Leonhart',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                  // Adjust the maxWidth as needed
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: isMe ? Color(0xFF5C00A4) : Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isMe ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMessageInputField() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40.0, // Set the height as needed
              child: TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  hintText: 'Type a message ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Color(0xFF5C00A4), width: 1.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 15.0), // Adjust the padding
                ),
                onSubmitted: (message) {
                  _sendMessage(message, true);
                  _messageController.clear();
                },
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            height: 45.0, // Set the height to match the TextField
            child: IconButton(
              icon: Icon(Icons.send),
              color: Color(0xFF5C00A4), // Set the icon color to purple
              onPressed: () {
                final message = _messageController.text.trim();
                if (message.isNotEmpty) {
                  _sendMessage(message, true);
                  _messageController.clear();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text, bool isMe) {
    setState(() {
      messages.add(ChatMessage(text: text, isMe: true));
      // Simulate an immediate response from the other person
      _sendAutomaticResponse();
    });
  }

  void _sendAutomaticResponse() {
    final longMessage =
        'This is a fake response. I am actually not real, but I hope that you\'re doing fine and well!';

    setState(() {
      messages.add(ChatMessage(text: longMessage, isMe: false));
    });
  }
}

class ChatMessage {
  final String text;
  final bool isMe;

  ChatMessage({required this.text, required this.isMe});
}

class _VirtualSupportGroupPageState extends State<GroupsPage> {
  int _currentIndex = 0; // Track the current index of the selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBodyContent(),
      bottomNavigationBar: BottomNav(),
    );
  }

  Widget _getBodyContent() {
    switch (_currentIndex) {
      case 0:
        return _buildContactsSection(
            context); // Show contacts section for index 0
      case 1:
        return FindGroupsContent(); // Show Find Groups content for index 1
      case 2:
        return CommunityPage(); // Show CommunityPage for index 2
      default:
        return Container();
    }
  }

//
// MY CONTACTS
//

  Widget _buildContactsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 50.0), // Adjust the top padding for spacing from AppBar
      child: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: 30.0), // Horizontal padding for contacts
        children: [
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            padding: EdgeInsets.symmetric(
                vertical: 10.0), // Vertical padding around contacts
            mainAxisSpacing:
                10.0, // Adjust the vertical spacing between contacts
            crossAxisSpacing:
                20.0, // Adjust the horizontal spacing between contacts
            children: [
              _buildContactItem(
                name: 'Core Group',
                image: AssetImage('assets/images/core.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(contactName: 'Core Group'),
                    ),
                  );
                },
              ),
              _buildContactItem(
                name: 'Tactics GC',
                image: AssetImage('assets/images/tactics.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(contactName: 'Tactics GC'),
                    ),
                  );
                },
              ),
              _buildContactItem(
                name: 'Nadine Beshy',
                image: AssetImage('assets/images/nadine.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(contactName: 'Nadine'),
                    ),
                  );
                },
              ),
              _buildContactItem(
                name: 'A Group',
                image: AssetImage('assets/images/a.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(contactName: 'A Group'),
                    ),
                  );
                },
              ),
              _buildContactItem(
                name: 'B Group',
                image: AssetImage('assets/images/b.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(contactName: 'B Group'),
                    ),
                  );
                },
              ),
              _buildContactItem(
                name: 'C Group',
                image: AssetImage('assets/images/c.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(contactName: 'C Group'),
                    ),
                  );
                },
              ),
            ],
          ),
          // Add button
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FindGroupsContent(),
                  ),
                );
              },
              child: Icon(
                Icons.add_box_rounded,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          SizedBox(height: 20.0), // Add some spacing at the bottom
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required String name,
    required ImageProvider<Object> image,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 75,
        height: 75,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          border: Border.all(
            width: 1,
            color: Color(0xFFCCCCCC),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//FIND GROUPS
//

class FindGroupsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFF8F8F8)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            FindGroups(),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                _buildGroup(
                  imagePath: 'assets/images/exo.png',
                  groupName: 'Kpop',
                  context: context,
                ),
                _buildGroup(
                  imagePath: 'assets/images/kn.jpg',
                  groupName: 'KathNiel',
                  context: context,
                ),
                _buildGroup(
                  imagePath: 'assets/images/unecs.jpg',
                  groupName: 'UNECS',
                  context: context,
                ),
                _buildGroup(
                  imagePath: 'assets/images/bits.png',
                  groupName: 'BITS',
                  context: context,
                ),
                _buildGroup(
                  imagePath: 'assets/images/aldub.jpg',
                  groupName: 'Aldub Nation',
                  context: context,
                ),
                _buildGroup(
                  imagePath: 'assets/images/franseth.jpg',
                  groupName: 'FranSeth',
                  context: context,
                ),
                // Add other groups as needed
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGroup({
    required String imagePath,
    required String groupName,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GroupDescription(
              groupName: groupName,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 24,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Color(0xFFCCCCCC),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      groupName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FindGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(width: 10),
        const Text(
          'Find Groups',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class GroupDescription extends StatelessWidget {
  final String groupName;
  final String imagePath;

  const GroupDescription({
    Key? key,
    required this.groupName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Description'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                groupName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Description of group goes here...', // Add actual description
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: const Color(0xFF5B00A4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  onPressed: () {
                    // Implement your logic here when the button is pressed
                  },
                  child: const Text(
                    'Add to My Contacts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
