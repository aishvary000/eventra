import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:eventra/Screens/structure.dart';
import 'package:eventra/Screens/Authentication/log_in.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) => snapshot.hasData ? Nav() : Login()),
    );
  }
}
