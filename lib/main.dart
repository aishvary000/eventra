import 'package:eventra/Screens/structure.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.teal,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.teal)),
      home: Nav(),
    );
  }
}
