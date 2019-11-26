import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blueAccent.shade200,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answerNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              var randomNumber = new Random();
              answerNumber = randomNumber.nextInt(5) + 1;
            });
            print('button is pressed');
          },
          child: Image(
            image: AssetImage('images/ball$answerNumber.png'),
          ),
        ),
      ),
    );
  }
}
