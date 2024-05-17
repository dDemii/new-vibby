import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
            // title:
            //     Text('Community'), // You can set the title of your app bar here
            ),
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20), // Adjust the initial space

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Explore Community',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),

                SizedBox(height: 20), // Add space between sections

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: screenWidth - 40,
                    height: 75,
                    child: Stack(
                      children: [
                        Container(
                          width: screenWidth - 40,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Color(0xFFEFCEFF),
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
                              color: Color(0xFF5C00A4),
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth - 145,
                          top: 2,
                          child: Container(
                            width: 70,
                            height: 70,
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PostPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 28,
                          child: Text(
                            'Care to share some thoughts?',
                            style: TextStyle(
                              color: Color(0xFF200D3C),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20), // Add space between sections

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Recent Posts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),

                SizedBox(height: 20), // Add space between sections

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: screenWidth - 40,
                    height: 40,
                    child: Stack(
                      children: [
                        Container(
                          width: screenWidth - 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
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
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 10,
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 0,
                          child: Container(
                            width: screenWidth - 100,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search Community',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(120, 0, 0, 0),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildCarouselItem('Trending'),
                        SizedBox(width: 12),
                        _buildCarouselItem('Relapse'),
                        SizedBox(width: 12),
                        _buildCarouselItem('Friendship'),
                        SizedBox(width: 12),
                        _buildCarouselItem('Christmas'),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20), // Add space between sections

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: screenWidth - 40,
                    height: 100,
                    child: Stack(
                      children: [
                        Container(
                          width: screenWidth - 40,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFCCCCCC),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: screenWidth - 146,
                          top: 6,
                          child: Container(
                            width: 90,
                            height: 22,
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEFCEFF),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xFF5C00A4),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 3,
                                  child: Text(
                                    'Christmas',
                                    style: TextStyle(
                                      color: Color(0xFF5C00A4),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 11,
                          child: Text(
                            'Demi Cutie   21 Nov',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 38,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              'layuan nyo star ng pasko ko baka kayo masabit ko hmfpx',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 63,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.message,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 20,
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 63,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 20,
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20), // Add space between sections

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: screenWidth - 40,
                    height: 100,
                    child: Stack(
                      children: [
                        Container(
                          width: screenWidth - 40,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFCCCCCC),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: screenWidth - 146,
                          top: 6,
                          child: Container(
                            width: 90,
                            height: 22,
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEFCEFF),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xFF5C00A4),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 22,
                                  top: 3,
                                  child: Text(
                                    'Relapse',
                                    style: TextStyle(
                                      color: Color(0xFF5C00A4),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 11,
                          child: Text(
                            'Kathryn Bernardo   15 Dec',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 38,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              'No looking back, only moving forward hihe',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 63,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.message,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 20,
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 63,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 20,
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add space between sections

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: screenWidth - 40,
                    height: 100,
                    child: Stack(
                      children: [
                        Container(
                          width: screenWidth - 40,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFCCCCCC),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: screenWidth - 146,
                          top: 6,
                          child: Container(
                            width: 90,
                            height: 22,
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEFCEFF),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xFF5C00A4),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 22,
                                  top: 3,
                                  child: Text(
                                    'Trending',
                                    style: TextStyle(
                                      color: Color(0xFF5C00A4),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 11,
                          child: Text(
                            'supremo_dp   15 Dec',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 38,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              'Alam niyo sino loyal? yung aso ko si summer arf',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 63,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.message,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 20,
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 63,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: const Color.fromRGBO(92, 0, 164, 1),
                              ),
                              iconSize: 20,
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildCarouselItem(String label) {
    return Container(
      width: 110,
      height: 25,
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 25,
            decoration: BoxDecoration(
              color: Color(0xFFEFCEFF),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: Color(0xFF5C00A4),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 4,
            child: Text(
              label,
              style: TextStyle(
                color: Color(0xFF5C00A4),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 1, 30, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 15),
              _buildPostContent(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create a Post',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 2),
        Text(
          'You are not going through this alone. The community is always here to support you.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildPostContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 550,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 300,
                  height: 510,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 2,
                        top: 2,
                        child: Container(
                          width: 280,
                          height: 490,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEFCEFF),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFF5C00A4),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 14.43,
                        child: SizedBox(
                          width: 250,
                          height: 36.91,
                          child: Text(
                            'Care to share some thoughts?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF200D3C),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 230.81,
                        top: 310.92,
                        child: Container(
                          width: 94.59,
                          height: 22.30,
                          child: Stack(
                            children: [],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 348.38,
                        child: Container(
                          width: 94.59,
                          height: 22.30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 94.59,
                                  height: 22.30,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Color(0xFF5C00A4),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 11.76,
                                top: 3.62,
                                child: SizedBox(
                                  width: 71.17,
                                  height: 15.40,
                                  child: Text(
                                    'Friendship',
                                    style: TextStyle(
                                      color: Color(0xFF5C00A4),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 230,
                        top: 348,
                        child: Container(
                          width: 94.59,
                          height: 22.30,
                          child: Stack(
                            children: [],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 384.05,
                        child: Container(
                          width: 207.16,
                          height: 22.30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 160,
                                  height: 22.30,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Color(0xFF5C00A4),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 2.95,
                                child: SizedBox(
                                  width: 150,
                                  height: 15.40,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Others: ',
                                          style: TextStyle(
                                            color: Color(0xFF5C00A4),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Type it here...',
                                          style: TextStyle(
                                            color: Color(0xFF5C00A4),
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 42,
                child: Container(
                  width: 141,
                  height: 133,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/share.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32.67,
                top: 177.10,
                child: Container(
                  width: 215,
                  height: 110,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF8EBFF),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFF5C00A4),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 33,
                        child: SizedBox(
                          width: 205,
                          height: 44,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Type to share your thoughts...',
                              hintStyle: TextStyle(
                                color: Color(0xFF200D3C),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 110,
                top: 310,
                child: Container(
                  width: 94.59,
                  height: 22.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 94.59,
                          height: 22.30,
                          decoration: ShapeDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFF5C00A4),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.76,
                        top: 3.08,
                        child: SizedBox(
                          width: 60,
                          height: 15,
                          child: Text(
                            'Relapse',
                            style: TextStyle(
                              color: Color(0xFF5C00A4),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 310.80,
                child: SizedBox(
                  width: 71.17,
                  height: 17.60,
                  child: Text(
                    'Add tags',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 15,
                top: 428,
                child: Center(
                  child: SizedBox(
                    width: 200, // Adjust the width as needed
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality to execute when the button is pressed
                        // For example, publish the message or perform an action
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Color(0xFF5B00A4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Publish now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
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
        )
      ],
    );
  }
}
