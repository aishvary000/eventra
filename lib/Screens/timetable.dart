import 'package:flutter/material.dart';

class Timetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
