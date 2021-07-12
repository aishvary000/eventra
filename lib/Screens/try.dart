import 'package:eventra/Screens/addEvent.dart';
import 'package:eventra/Screens/addMeeting.dart';
import 'package:eventra/Screens/profile.dart';
import 'package:eventra/screens/calender.dart';
import 'package:eventra/screens/timetable.dart';
import 'package:eventra/Screens/home.dart';
import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  void addButton() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 70.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.event,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Add Event',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddEvent()));
                  },
                ),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Add Meeting',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddMeeting()));
                  },
                ),
              ],
            ),
          );
        });
  }

  int _currentIndex = 0;
  List<String> appbarText = ['Home', 'Calender', '', 'Schedule', 'Profile'];
  List displayWidget = [
    Home(),
    HomeCalendarPage(),
    Opacity(opacity: 0),
    Timetable(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appbarText[_currentIndex],
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
    );
  }
}
