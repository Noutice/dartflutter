import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../models/event.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.events,
  }) : super(key: key);

  final Event events;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purpleAccent,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 11),
      child: ListTile(
        title: Text(
          events.name,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        subtitle: Text(
            "${events.location} | ${events.dateTime}"),
        leading: const Icon(
          Icons.local_activity,
          size: 30,
          color: Colors.black,
        ),
        trailing: const IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          onPressed: pressed,
        ),
        onTap: () => print("-- ${events.name} --"),
      ),
      // Column(
      //   children: [
      //     Text(
      //       events[index].name,
      //       style: const TextStyle(fontSize: 30),
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Text(
      //           events[index].location,
      //         ),
      //         const SizedBox(width: 14,),
      //         Text(
      //             events[index].dateTime
      //         ),
      //         const SizedBox(width: 20,),
      //         ],
      //       ),
      //     ],
      //   ),
    );
  }
}