import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(SnakeGame());
}

class SnakeGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Snake(),
    );
  }
}

class Snake extends StatefulWidget {
  @override
  _SnakeState createState() => _SnakeState();
}

class _SnakeState extends State<Snake> {
  static const int gridSize = 20;
  static const int speed = 300;

  List<int> snake = [45, 65];
  int food = 0;
  bool gameOver = false;
  var direction = 'right';

  @override
  void initState() {
    super.initState();
    newGame();
  }

  void newGame() {
    const duration = const Duration(milliseconds: speed);
    Timer.periodic(duration, (Timer timer) {
      if (gameOver) {
        timer.cancel();
        setState(() {});
      } else {
        moveSnake();
      }
    });
  }

  void moveSnake() {
    setState(() {
      switch (direction) {
        case 'up':
          if (snake.first < gridSize) {
            gameOver = true;
            return;
          }
          snake.insert(0, snake.first - gridSize);
          break;
        case 'down':
          if (snake.first > ((gridSize * gridSize) - gridSize)) {
            gameOver = true;
            return;
          }
          snake.insert(0, snake.first + gridSize);
          break;
        case 'left':
          if (snake.first % gridSize == 0) {
            gameOver = true;
            return;
          }
          snake.insert(0, snake.first - 1);
          break;
        case 'right':
          if ((snake.first + 1) % gridSize == 0) {
            gameOver = true;
            return;
          }
          snake.insert(0, snake.first + 1);
          break;
      }

      if (snake.first == food) {
        food = newFood();
      } else {
        snake.removeLast();
      }
    });
  }

  int newFood() {
    int newFood;
    var rng = new Random();
    do {
      newFood = rng.nextInt(gridSize * gridSize);
    } while (snake.contains(newFood));
    return newFood;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double itemSize = screenSize.width / gridSize;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
              child: GridView.builder(
                itemCount: gridSize * gridSize,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridSize,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (snake.contains(index)) {
                    return Container(
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    );
                  } else if (index == food) {
                    return Container(
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildControllerButton(Icons.arrow_upward),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      _buildControllerButton(Icons.arrow_back),
                      SizedBox(height: 20),
                      _buildControllerButton(Icons.arrow_forward),
                    ],
                  ),
                  SizedBox(width: 20),
                  _buildControllerButton(Icons.arrow_downward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControllerButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[700],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: 40,
        color: Colors.white,
        onPressed: () {
          switch (icon) {
            case Icons.arrow_upward:
              if (direction != 'down') direction = 'up';
              break;
            case Icons.arrow_back:
              if (direction != 'right') direction = 'left';
              break;
            case Icons.arrow_forward:
              if (direction != 'left') direction = 'right';
              break;
            case Icons.arrow_downward:
              if (direction != 'up') direction = 'down';
              break;
          }
        },
      ),
    );
  }
}
