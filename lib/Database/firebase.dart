import 'package:eventra/Model/Notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  //AuthenticationService(this._firebaseAuth);
  Future signIn({required String email, required String password}) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signUp({required String email, required String password}) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> addNotification(String topic, String description) {
    CollectionReference notifications =
        firestore.collection("General Notification");

    // Call the user's CollectionReference to add a new user
    return notifications
        .add({'title': topic, 'clubName': description})
        .then((value) => print("Notification Added"))
        .catchError((error) => print("Failed to add Notification: $error"));
  }

  fetchGeneralNotification() async {
    try {
      var future = firestore.collection("General Notification").snapshots();
      return future;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> addEventToGeneralNotification(
      String topic, String description, String organizedBy) async {
    CollectionReference notifications =
        firestore.collection("General Notification");
    return notifications
        .add({
          'title': topic,
          'clubName': organizedBy,
          'description': description
        })
        .then((value) => print("Notification Added"))
        .catchError((error) => print("Failed to add Notification: $error"));
  }

  Future logout() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
