import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Color(0xFF07C277),
            secondary: Color(0xFF45B7BD),
          ),
          primaryColor: Colors.blue,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.teal)),
      home: Wrapper(),
    );
  }
}
