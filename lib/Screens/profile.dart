import 'package:eventra/Screens/settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          child: Row(
            children: [
              Icon(Icons.settings),
              SizedBox(width: 20.0),
              Text(
                'Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
      ),
    );
  }
}
