import 'package:flutter/material.dart';

class Meeting {
  List<MeetingCard> meetings = [];
  String topic = '';
  String description = '';

  void addMeeting(String topic, String description) {
    meetings.add(
      MeetingCard(
        topic: topic,
        description: description,
      ),
    );
  }
}

class MeetingCard extends StatelessWidget {
  MeetingCard({required this.topic, required this.description});
  final String topic;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 1.0),
      child: Card(
        child: ListTile(
          title: Text(
            topic,
            style: TextStyle(fontSize: 20.0),
          ),
          subtitle: Visibility(
            visible: true, //description != null ? true : false
            child: Text(description),
          ),
        ),
      ),
    );
  }
}
