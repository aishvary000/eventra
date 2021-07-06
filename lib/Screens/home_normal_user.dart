import 'dart:ui';
import 'package:eventra/Database/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eventra/widgets/bottom_navBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomeNormalUser extends StatefulWidget {
  @override
  State<HomeNormalUser> createState() => _HomeNormalUserState();
}

class _HomeNormalUserState extends State<HomeNormalUser> {
  final Stream<QuerySnapshot> _notificationStream = FirebaseFirestore.instance.collection('General Notification').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _notificationStream,
      builder: (BuildContext context,  AsyncSnapshot<QuerySnapshot> snapshot){
        if(snapshot.hasError){
          return Text('Something Went Wrong');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        return Scaffold(
          bottomNavigationBar: BottomNavigationBarTravel(),
          body: SafeArea(

            child: Container(
              child: ListView(

                physics: BouncingScrollPhysics(),
                children: <Widget>[

                  /// Custom Navigation Drawer and Search Button
                  Container(

                    height: 57.6,
                    margin: EdgeInsets.only(top: 10.8, left: 10.8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 57.6,
                          width: 57.6,
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            color: Color(0x080a0928),
                          ),
                          child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                        ),
                      ],
                    ),
                  ),
             ],
              ),
            ),

          ),
        );

      }
    );



  }
}
