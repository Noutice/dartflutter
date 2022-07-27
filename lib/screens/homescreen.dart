import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/event.dart';

import '../components/eventcomponent.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Event> events = [
    Event(name: 'Name1', location: 'Location1', dateTime: '${DateTime.now()}'),
    Event(name: 'Name2', location: 'Location2', dateTime: '${DateTime.now()}'),
    Event(name: 'Name3', location: 'Location3', dateTime: '${DateTime.now()}'),
    Event(name: 'Name4', location: 'Location4', dateTime: '${DateTime.now()}'),
    Event(name: 'Name5', location: 'Location5', dateTime: '${DateTime.now()}'),
    Event(name: 'Name6', location: 'Location6', dateTime: '${DateTime.now()}'),
    Event(name: 'Name7', location: 'Location7', dateTime: '${DateTime.now()}'),
    Event(name: 'Name8', location: 'Location8', dateTime: '${DateTime.now()}'),
    Event(name: 'Name9', location: 'Location9', dateTime: '${DateTime.now()}'),
    Event(
        name: 'Name10', location: 'Location10', dateTime: '${DateTime.now()}'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.black,
          ]),
        ),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          itemCount: events.length,
          itemBuilder: (_, index) => EventCard(events: events[index]),
        ),
      ),
      //   Align(
      //   alignment: const Alignment(0, 0),
      //   child: Container(
      //     width: 400,
      //     height: 500,
      //     decoration: BoxDecoration(
      //       color: Colors.blueAccent,
      //       borderRadius: BorderRadius.circular(50),
      //     ),
      //     child: Wrap(
      //       direction: Axis.horizontal,
      //       spacing: 20,
      //       runSpacing: 35,
      //       alignment: WrapAlignment.center,
      //       runAlignment: WrapAlignment.center,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.red),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.purpleAccent),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.white38),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.yellow),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 100,
      //           width: 100,
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.blueAccent),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.blueAccent),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.blueAccent),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.black,
      //           child: const Align(
      //             alignment: Alignment(0, 0),
      //             child: Text(
      //               "hello",
      //               style: TextStyle(color: Colors.blueAccent),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //           decoration: BoxDecoration(
      //             border: Border.all(color: Colors.redAccent, width: 8,),
      //             boxShadow: const [
      //               BoxShadow(
      //                 color: Colors.black,
      //                 spreadRadius: 10,
      //                 blurRadius: 10,
      //                 offset: Offset(3, 3),
      //               ),
      //             ],
      //             shape: BoxShape.circle,
      //             color: Colors.orange,
      //           ),
      //           child: const IconButton(
      //             icon: Icon(
      //               Icons.access_time,
      //             ),
      //             color: Colors.red,
      //             iconSize: 80.0,
      //             onPressed: pressed,
      //           ),
      //         ),
      //     const SizedBox(width: 40,),
      //     Container(
      //         decoration: BoxDecoration(
      //           border: Border.all(color: Colors.redAccent, width: 8,),
      //           boxShadow: const [
      //             BoxShadow(
      //               color: Colors.black,
      //               spreadRadius: 10,
      //               blurRadius: 10,
      //               offset: Offset(3, 3),
      //             ),
      //           ],
      //           shape: BoxShape.circle,
      //           color: Colors.orange,
      //         ),
      //         child: const IconButton(
      //           icon: Icon(
      //             Icons.access_time,
      //           ),
      //           color: Colors.red,
      //           iconSize: 80.0,
      //           onPressed: pressed,
      //         ),
      //       ),
      //     const SizedBox(),
      //     ],
      //   ),
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
    );
  }
}