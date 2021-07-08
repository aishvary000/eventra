import 'package:flutter/material.dart';

class Event {
  List<EventCard> events = [];
  String topic = '';
  String description = '';
  String organizedBy = '';

  void addEvent(String topic, String description, String organizedBy) {
    events.add(
      EventCard(
          topic: topic, description: description, organizedBy: organizedBy),
    );
  }
}

class EventCard extends StatelessWidget {
  EventCard(
      {required this.topic,
      required this.description,
      required this.organizedBy});
  final String topic;
  final String description;
  final String organizedBy;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 1.0),
            child: Card(
              child: ListTile(
                title: Text(
                  topic,
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: Visibility(
                  visible: true, //description != null ? true : false
                  child: Column(
                    children: [
                      Text(description),
                      Text(organizedBy),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
