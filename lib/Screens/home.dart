import 'package:flutter/material.dart';
import 'addMeeting.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'admin_choices/admin_choices.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Stream<QuerySnapshot> _notificationStream =
      FirebaseFirestore.instance.collection('General Notification').snapshots();

  AddMeeting meet = AddMeeting();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _notificationStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something Went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            body: ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                return new Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(children: [
                      ListTile(
                          title: new Text('Topic : ${data['title']}'),
                          subtitle:
                              new Text('Club Name : ${data['clubName']}')),
                      Padding(
                        padding: const EdgeInset.all(16.0),
                        child: Text(
                          'Description : ${data['description']}',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      )
                    ]));
              }).toList(),
            ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => AdminChoices()));
            //     print(meet.meet.meetings);
            //     setState(() {});
            //   },
            //   child: Icon(Icons.add),
            // ),
          );
        });
  }
}
// ListView(
// children: snapshot.data!.docs.map((DocumentSnapshot document) {
// Map<String, dynamic> data = document.data() as Map<
// String,
// dynamic>;
// return new ListTile(
// title: new Text(data['title']),
// subtitle: new Text(data['clubName']),
// );
// })
