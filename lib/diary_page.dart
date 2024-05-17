import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting
import 'package:table_calendar/table_calendar.dart'; // Import for the table calendar
import 'mood_selection_widget.dart'; // Import the MoodSelectionWidget

class DiaryPage extends StatefulWidget {
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  int _currentIndex = 0;
  final Color tabIndicatorColor = Color(0xFF5C00A4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DiaryContent(),
    );
  }
}

class DiaryContent extends StatefulWidget {
  @override
  _DiaryContentState createState() => _DiaryContentState();
}

class _DiaryContentState extends State<DiaryContent> {
  late DateTime _selectedDate;
  late Map<DateTime, String> moodData = {};

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDate = selectedDay;
    });
    _showDiaryEntryPopup();
  }

  void _showDiaryEntryPopup() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return MoodSelectionWidget(
          onMoodSelected: (selectedMood) {
            moodData[_selectedDate] = selectedMood;
            setState(() {});
            Navigator.of(context).pop();
          },
        );
      },
    ).then((value) {
      if (value == 'addEntry') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                AddDiaryEntryPage(selectedDate: _selectedDate),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width *
                0.9, // Adjust the width here
            child: TableCalendar(
              firstDay: DateTime(2020),
              lastDay: DateTime.now(),
              focusedDay: _selectedDate,
              calendarFormat: CalendarFormat.month,
              rowHeight: 40, // Adjust the height of each row
              headerStyle: HeaderStyle(
                formatButtonVisible: false, // Hide the format button
              ),
              onDaySelected: _onDaySelected,
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (moodData[date] != null) {
                    String selectedMood = moodData[date]!;

                    // Map mood labels to respective mood images
                    Map<String, String> moodImages = {
                      'Meh': "assets/mood/meh.png",
                      'Happy': "assets/mood/happy.png",
                      'Sad': "assets/mood/sad.png",
                      'Angry': "assets/mood/angry.png",
                      // Add more mappings for different moods if needed
                    };

                    return Center(
                      child: Image.asset(
                        moodImages[selectedMood]!,
                        height: 30, // Adjust the size of the image as needed
                        width: 30,
                      ),
                    );
                  } else {
                    return Container(); // No mood selected for this date
                  }
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) =>
                    AddDiaryEntryPage(selectedDate: DateTime.now())),
              ),
            );
          },
          icon: Icon(Icons.add_box_rounded),
          iconSize: 40, // Adjust the icon size as needed
          color: const Color.fromARGB(255, 0, 0, 0), // Change the icon color
        ),
      ],
    );
  }
}

class AddDiaryEntryPage extends StatefulWidget {
  final DateTime selectedDate;

  AddDiaryEntryPage({required this.selectedDate});

  @override
  _AddDiaryEntryPageState createState() => _AddDiaryEntryPageState();
}

class _AddDiaryEntryPageState extends State<AddDiaryEntryPage> {
  bool _isKeyboardVisible = false;
  TextEditingController _textEditingController = TextEditingController();
  late DateTime _selectedDate;
  bool _isTextCentered = false;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapping outside the text field
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Diary Entry'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 7.0), // Adjust the value as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {
                              // Logic for the CIRCLE button (to perform some action)
                            },
                            elevation: 2.5,
                            fillColor: Colors.white,
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                            padding: EdgeInsets.all(10.0),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            DateFormat('EEEE, MMMM d, y').format(_selectedDate),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            onPressed: () {
                              // Logic for editing the date
                              _selectDate(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _textEditingController,
                      maxLines: 10,
                      textAlign:
                          _isTextCentered ? TextAlign.center : TextAlign.start,
                      decoration: InputDecoration(
                        hintText: 'Record your day ...',
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                      onChanged: (value) {
                        // Add your logic when text changes in TextFormField
                      },
                      onTap: () {
                        setState(() {
                          _isKeyboardVisible = true;
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          _isKeyboardVisible = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void saveDiaryEntry() {
    // Add your logic here to save the diary entry using _textEditingController.text
    print('Diary entry saved: ${_textEditingController.text}');
    Navigator.of(context).pop(); // Close the page after saving
  }

  Future<void> _selectDate(BuildContext context) async {
    // Add your logic to show a date picker and update the _selectedDate
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(), // Limit to the present or past
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}
