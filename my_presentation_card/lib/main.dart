import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage('images/alex.jpeg'),
              ),
              Text(
                'Alex Vergara',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Pacifico',
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ), //Text
              Text(
                'SOFTWARE DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.5,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.lightBlue[100],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200.0,
                child: Divider(
                  color: Colors.black38,
                ),
              ), //Text
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue[500]
                  ),
                  title: Text(
                    '652 845 257',
                    style: TextStyle(
                          color: Colors.blue[500],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                      ),
                    )
                  ),
                ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue[500]
                  ),
                  title: Text(
                    'alex10.vergara@gmail.com',
                    style: TextStyle(
                          color: Colors.blue[500],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
