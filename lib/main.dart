import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              fontSize: 35.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white38,
              fontFamily: "CormorantSC",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: SvgPicture.asset('assets/images/kiwi.svg'),
        // const Image(
          // image: AssetImage(
              // 'assets/images/img1.jpg'),
        // ),
        // RichText(
        //   text: const TextSpan(
        //       style: TextStyle(
        //         fontSize: 30.0,
        //         fontStyle: FontStyle.italic,
        //         color: Colors.red,
        //       ),
        //       children: <TextSpan>[
        //         TextSpan(text: "Hello "),
        //         TextSpan(text: "world"),
        //         TextSpan(text: "!", style: TextStyle(color: Colors.black)),
        //         TextSpan(
        //           style: TextStyle(
        //             color: Colors.amber,
        //             fontSize: 50.0,
        //           ),
        //           children: <TextSpan>[
        //             TextSpan(text: "\nbarev "),
        //             TextSpan(text: "ashxarh",),
        //             TextSpan(text: "!", style: TextStyle(color: Colors.black)),
        //           ],
        //         ),
        //       ]),
        // ),
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
