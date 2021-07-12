import 'package:eventra/Screens/addEvent.dart';
import 'package:eventra/Screens/addMeeting.dart';
import 'package:eventra/Screens/profile.dart';
import 'package:eventra/screens/calender.dart';
import 'package:eventra/screens/timetable.dart';
import 'package:eventra/Screens/home.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
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
      body: displayWidget[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        selectedIconTheme: IconThemeData(size: 30.0),
        unselectedIconTheme: IconThemeData(size: 20.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 40.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            addButton();
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
