import 'package:flutter/material.dart';
// import 'package:eventra/screens/nav.dart';
import 'package:eventra/screens/home_normal_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: HomeNormalUser(),
    );
  }
}
