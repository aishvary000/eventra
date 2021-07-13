import 'package:eventra/Screens/addEvent.dart';
import 'package:eventra/Screens/addMeeting.dart';
import 'package:eventra/Screens/profile.dart';
import 'package:eventra/screens/calender.dart';
import 'package:eventra/screens/timetable.dart';
import 'package:eventra/Screens/home.dart';
import 'package:flutter/material.dart';

import 'FABBottomAppBar.dart';

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
  // List<String> appbarText = ['Home', 'Calender', 'Schedule', 'Profile'];
  List displayWidget = [Home(), HomeCalendarPage(), Timetable(), Profile()];
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
      _currentIndex = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent[400],
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        elevation: 2.0,
        onPressed: () {
          addButton();
        },
      ),
      body: displayWidget[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.blueGrey,
        centerItemText: '',
        color: Color(0xFFF0F0F0),
        notchedShape: CircularNotchedRectangle(),
        selectedColor: Color(0xFF232323),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: Icons.calendar_today, text: 'Calender'),
          FABBottomAppBarItem(iconData: Icons.schedule, text: 'Schedule'),
          FABBottomAppBarItem(iconData: Icons.person, text: 'Profile'),
        ],
      ),
    );
  }
}
