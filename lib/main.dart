import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
        title: const Text(
          'Ask a random',
        ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int changeBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeBall=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$changeBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
