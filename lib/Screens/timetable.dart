import 'package:flutter/material.dart';

class Timetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF00b8d4),
                Color(0xFF4db6ac),
                Color(0xFF00897b),
              ],
              stops: [0.1, 0.5, 1.0],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              'Mess Menu',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Image.asset("assets/MessMenu.jpg"),
          SizedBox(
            height: 15.0,
          ),
          Divider(
            thickness: 5.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              'Bus Schedule',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Image.asset("assets/Bus-1.jpg"),
          Image.asset(
            "assets/Bus-2.jpg",
            //scale: 3.5,
            height: 500.0,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
