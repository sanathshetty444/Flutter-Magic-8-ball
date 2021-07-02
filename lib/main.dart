import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Center(
            child: Text('Magic 8-Ball'),
          ),
        ),
        body: MyApp(),
        backgroundColor: Colors.grey[500],
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int state = 1;
  Random r = new Random();
  void generate() {
    setState(() {
      state = r.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {
            generate();
          },
          child: Image.asset('images/ball$state.png'),
        ),
      ],
    );
  }
}
