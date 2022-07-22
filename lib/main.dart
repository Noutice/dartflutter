import 'package:flutter/material.dart';

void pressed() {
  print('pressed');
}

void main() => runApp(const FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  const FlutterTutorialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'flutter tutorrial',
            style: TextStyle(
              fontSize: 50.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white38,
              fontFamily: "CormorantSC",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: RichText(
          text: const TextSpan(
              style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                fontFamily: "CormorantSC",
              ),
              children: <TextSpan>[
                TextSpan(text: "Hello "),
                TextSpan(text: "world"),
                TextSpan(text: "!", style: TextStyle(color: Colors.black)),
                TextSpan(
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 50.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "\nbarev "),
                    TextSpan(text: "ashxarh",),
                    TextSpan(text: "!", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ]),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: pressed,
          backgroundColor: Colors.black,
          child: Text('ADD'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
