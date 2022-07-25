import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void pressed() {
  print('print');
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
            'Hrach`s app',
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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.redAccent, width: 8,),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(3, 3),
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: const IconButton(
                    icon: Icon(
                      Icons.access_time,
                    ),
                    color: Colors.red,
                    iconSize: 80.0,
                    onPressed: pressed,
                  ),
                ),
            const SizedBox(width: 40,),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 8,),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(3, 3),
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: const IconButton(
                  icon: Icon(
                    Icons.access_time,
                  ),
                  color: Colors.red,
                  iconSize: 80.0,
                  onPressed: pressed,
                ),
              ),
            const SizedBox(),
            ],
          ),
        // Stack(
         //   alignment: Alignment.bottomLeft,
         //   children: [
         //     Container(
         //       padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
         //       alignment: Alignment.bottomRight,
         //       height: 300,
         //       width: 300,
         //       color: Colors.red,
         //       child: const Text('1', style: TextStyle(fontSize: 25),),
         //     ),
         //     Container(
         //       padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
         //       alignment: Alignment.bottomRight,
         //       height: 200,
         //       width: 200,
         //       color: Colors.blue,
         //       child: const Text('2', style: TextStyle(fontSize: 25),),
         //     ),
         //     Positioned(
         //       top: 50,
         //       right: 30,
         //       child: Container(
         //         alignment: Alignment.center,
         //         height: 100,
         //         width: 100,
         //         color: Colors.purple,
         //         child: const Text('3', style: TextStyle(fontSize: 25),),
         //       ),
         //     ),
         //   ],
         // ),
        //      Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       alignment: Alignment.center,
        //       height: 150,
        //       width: 200,
        //       color: Colors.red,
        //       child: const Text(
        //         '1',
        //         style: TextStyle(
        //           color: Colors.orange,
        //           fontSize: 50,
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //         width: 200,
        //         height: 150,
        //         color: Colors.yellow,
        //         child: const IconButton(
        //           icon: Icon(Icons.search),
        //           iconSize: 100,
        //           color: Colors.pink,
        //           onPressed: pressed,
        //         )
        //     ),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //         height: 150,
        //         width: 200,
        //         color: Colors.blue,
        //         child: SvgPicture.asset(
        //           "assets/images/kiwi.svg",
        //           fit: BoxFit.fill,
        //         )
        //     ),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 150,
        //       width: 200,
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(
        //           image: AssetImage('assets/images/img1.jpg'),
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ),
        //     Container()
        //   ],
        // ),

        // Container(
        //    decoration: const BoxDecoration(
        //       image: DecorationImage(
        //          image: AssetImage('assets/images/img1.jpg'),
        //       fit: BoxFit.fill,
        //      ),
        //     // gradient: LinearGradient(colors: [
        //       // Colors.redAccent,
        //       // Colors.yellowAccent,
        //     // ]),
        //   ),
        //   alignment: Alignment.center,
        //   child: Container(
        //     decoration: BoxDecoration(
        //       color: Colors.amberAccent,
        //       shape: BoxShape.circle,
        //       border: Border.all(
        //         color: Colors.redAccent,
        //         width: 8.0,
        //         style: BorderStyle.solid,
        //       ),
        //       boxShadow: const [
        //         BoxShadow(
        //           color: Colors.black,
        //           spreadRadius: 10.0,
        //           blurRadius: 10,
        //           offset: Offset(3, 3),
        //         ),
        //       ],
        //     ),
        //     child: const IconButton(
        //       alignment: Alignment(0, 0),
        //       icon: Icon(Icons.search),
        //       onPressed: pressed,
        //       iconSize: 50,
        //       color: Colors.redAccent,
        //     ),
        //   ),
        // ),
        // const Padding(
        //   padding: EdgeInsets.zero,
        //   child: IconButton(
        //     icon: Icon(
        //       Icons.search,
        //     ),
        //     iconSize: 40.0,
        //     color: Colors.red,
        //     onPressed: pressed,
        //   ),
        // ),
        // SvgPicture.asset('assets/images/kiwi.svg'),
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
          child: Text(
            '+',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
