import 'package:flutter/material.dart';
import 'bottom_nav.dart'; // Import the BottomNav widget
import 'upper_nav.dart'; // Import the UpperNav widget

class DrawingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UpperNav(),
          Expanded(
            child: DrawingContent(), // Your drawing content goes here
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

// Define your drawing content as a separate widget if needed
class DrawingContent extends StatefulWidget {
  @override
  _DrawingContentState createState() => _DrawingContentState();
}

class _DrawingContentState extends State<DrawingContent> {
  List<Offset?> _points = <Offset?>[];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            setState(() {
              RenderBox renderBox = context.findRenderObject() as RenderBox;
              _points.add(renderBox.globalToLocal(details.globalPosition));
            });
          },
          onPanEnd: (DragEndDetails details) {
            _points.add(null);
          },
          child: CustomPaint(
            painter: DrawingPainter(points: _points),
            size: Size.infinite,
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _points.clear();
              });
            },
            child: Icon(Icons.clear),
          ),
        ),
      ],
    );
  }
}

class DrawingPainter extends CustomPainter {
  final List<Offset?> points;

  DrawingPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
