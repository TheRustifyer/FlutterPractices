import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.indigo[800],
            title: Center(
              child: Text('Ask Me Anything'),
          ),
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

  int ballNumber;

  void changeBallState() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;         
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
          onPressed: (){
            changeBallState();
          },
        child: Image.asset('images/ball$ballNumber.png'),
      )
    );
  }
}