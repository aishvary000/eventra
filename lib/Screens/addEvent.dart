// import 'package:eventra/Database/firebase.dart';
// import 'package:flutter/cupertino.dart';
import 'package:eventra/Database/firebase.dart';
import 'package:flutter/material.dart';
import 'package:eventra/Model/event_card.dart';

class AddEvent extends StatefulWidget {
  final Event event = Event();



  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Add a new Event",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Topic',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onChanged: (val) {
              setState(() {
                widget.event.topic = val;
              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Description',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onChanged: (val) {
              setState(() {
                widget.event.description = val;

              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Organised By',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onChanged: (val) {
              setState(() {
                widget.event.organizedBy = val;
              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.event.addEvent(widget.event.topic, widget.event.description,
                    widget.event.organizedBy);
              });
              AuthenticationService().addEventToGeneralNotification(widget.event.topic, widget.event.description,widget.event.organizedBy);
              Navigator.of(context).pop();
            },
            child: Text('Save'),
          )
        ],
      ),
    );
  }
}
