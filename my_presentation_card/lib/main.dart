import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.indigo[900],
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.blue[500],
                  child: CircleAvatar(
                    radius: 75.0,
                    backgroundImage: AssetImage(
                      'images/alex_2.jpeg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Alex Vergara',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Bungee Inline',
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ), //Text
                Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontFamily: 'Bungee Inline',
                    color: Colors.lightBlue[100],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 200.0,
                  child: Divider(
                    color: Colors.lightBlue[100],
                  ),
                ), //Text
                Card(
                  elevation: 20.0,
                  shadowColor: Colors.grey[900],
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        '+34 652 845 257',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      )),
                ),
                Card(
                  elevation: 20.0,
                  shadowColor: Colors.grey[900],
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      'alex10.vergara@gmail.com',
                      style: TextStyle(
                        color: Colors.blue[500],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 20.0,
                  shadowColor: Colors.grey[900],
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Container(
                      child: Image(
                        image: AssetImage(
                          'images/github.png',
                        ),
                      ),
                      color: Colors.white,
                    ),
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(
                              color: Colors.blue[500],
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0,
                            ),
                            text: 'https://github.com/Pyzyryab',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                var url = "https://github.com/Pyzyryab";
                                await launch(url);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
