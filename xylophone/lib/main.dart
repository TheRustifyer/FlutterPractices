import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar : AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Xylophone')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipOval(
              child: Material(
                color: Colors.grey[500], // button color
                child: InkWell(
                  splashColor: Colors.pink, // inkwell color
                  child: SizedBox(width: 200, height: 200, child: Image.asset('images/xy_icon.png')),
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => XylophoneApp()),
                    );
                  },
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Xilófono',
              style: TextStyle(
              fontSize: 30.0,
              ),  
            ),
          )
        ],
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded buildKey({Color color, int number, Text text}) {
    return Expanded(
      // ignore: missing_required_param
      child: FlatButton(
        child: text,
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  // Here goes the xylophone

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, number: 1, text: Text('C / Do')),
              buildKey(color: Colors.orange, number: 2, text: Text('D / Re')),
              buildKey(color: Colors.yellow, number: 3, text: Text('E / Mi')),
              buildKey(color: Colors.green, number: 4, text: Text('F / Fa')),
              buildKey(color: Colors.teal, number: 5, text: Text('G / Sol')),
              buildKey(color: Colors.blue, number: 6, text: Text('A / La')),
              buildKey(color: Colors.purple, number: 7, text: Text('B / Si')),
            ],
          ),
        ),
      ),
    );
  }
}
