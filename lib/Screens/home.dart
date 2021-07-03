import 'package:flutter/material.dart';
import 'addMeeting.dart';
import 'package:eventra/Model/meeting_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AddMeeting meet = AddMeeting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: meet.meet.meetings.length,
          itemBuilder: (BuildContext context, int index) {
            return MeetingCard(
                topic: meet.meet.topic, description: meet.meet.description);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMeeting()));
          print(meet.meet.meetings);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
