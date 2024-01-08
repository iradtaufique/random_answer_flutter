import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

// Stateless widget class BallPage
class BallPage extends StatelessWidget {
  // const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      appBar: AppBar(
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: Ball(),
    );
  }
}

// stateful widget class Ball
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('images/ball$ballNumber.png'),
    ));
  }
}
