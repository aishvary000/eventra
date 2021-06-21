import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<MeetingCard> meetings = [];
  String topic = 'Meeting at 5';
  String description = 'be on time';

  void addMeeting() {
    meetings.add(
      MeetingCard(
        topic: topic,
        description: description,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: meetings.length,
          itemBuilder: (BuildContext context, int index) {
            return MeetingCard(topic: topic, description: description);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            addMeeting();
          });
        },
        child: Icon(Icons.add),
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
