import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminBottomNavigationBarTravel extends StatefulWidget {
  @override
  _AdminBottomNavigationBarTravelState createState() =>
      _AdminBottomNavigationBarTravelState();
}

class _AdminBottomNavigationBarTravelState extends State<AdminBottomNavigationBarTravel> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomNavStyle =
      GoogleFonts.lato(fontSize: 19, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
            ),
            activeIcon: new Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.calendar_today,
            ),
            // label: 'Calender',
            activeIcon: new Icon(Icons.calendar_today, color: Colors.black),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add_box,
            ),
            // label: 'Calender',
            activeIcon: new Icon(Icons.add_box, color: Colors.black),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            activeIcon: new Icon(Icons.notifications, color: Colors.black),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle_rounded),
            activeIcon:
                new Icon(Icons.account_circle_rounded, color: Colors.black),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
