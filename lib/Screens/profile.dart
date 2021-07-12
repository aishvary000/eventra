import 'package:eventra/Screens/settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: TextButton(
        child: Row(
          children: [
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
            SizedBox(width: 20.0),
            Text(
              'Settings',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Settings()));
        },
      ),
    );
  }
}
