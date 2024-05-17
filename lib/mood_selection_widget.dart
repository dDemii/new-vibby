import 'package:flutter/material.dart';

class MoodSelectionWidget extends StatelessWidget {
  final Function(String) onMoodSelected;

  MoodSelectionWidget({required this.onMoodSelected});

  final List<String> moodImages = [
    "assets/mood/meh.png",
    "assets/mood/happy.png",
    "assets/mood/sad.png",
    "assets/mood/angry.png",
  ];

  final List<String> moodLabels = [
    'Meh',
    'Happy',
    'Sad',
    'Angry',
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Container(
        width: double.infinity,
        height: 450,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              'How are you feeling today?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 20), // Adjusted spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMoodItem(moodImages[0], moodLabels[0]),
                SizedBox(width: 40), // Adjusted spacing
                _buildMoodItem(moodImages[1], moodLabels[1]),
              ],
            ),
            SizedBox(height: 25), // Adjusted spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMoodItem(moodImages[2], moodLabels[2]),
                SizedBox(width: 40), // Adjusted spacing
                _buildMoodItem(moodImages[3], moodLabels[3]),
              ],
            ),
            SizedBox(height: 10), // Adjusted spacing
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the bottom sheet
              },
              child: Text('Save Mood'),
            ),
            SizedBox(height: 10), // Adjusted spacing
          ],
        ),
      ),
    );
  }

  Widget _buildMoodItem(String imagePath, String label) {
    return GestureDetector(
      onTap: () {
        onMoodSelected(label); // Pass the selected mood back to the caller
        print('Selected mood: $label');
      },
      child: Column(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
