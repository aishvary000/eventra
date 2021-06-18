import 'package:eventra/Screens/Authentication/signup.dart';
import 'package:flutter/material.dart';
// import 'package:eventra/screens/nav.dart';
//import 'package:eventra/screens/home_normal_user.dart';
import 'package:eventra/Screens/Authentication/log_in.dart';
//import 'package:eventra/Screens/Authentication/signup.dart';

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
      home: Login(),
    );
  }
}
