import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.events,
  }) : super(key: key);

  final Event events;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {

  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purpleAccent,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 11),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(
          widget.events.name,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        subtitle: Text(
            "${widget.events.location} | ${widget.events.dateTime}"),
        leading: const Icon(
          Icons.local_activity,
          size: 30,
          color: Colors.black,
        ),
        trailing: IconButton(
          icon: _isEnabled ? const Icon(Icons.lock_open) : const Icon(Icons.lock_outline),
          color: Colors.white,
          onPressed: () => setState(() => _isEnabled = !_isEnabled)
        ),
        onTap: () => print("-- ${widget.events.name} --"),
        onLongPress: () => print("-- ${widget.events.location} | ${widget.events.dateTime} --"),
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