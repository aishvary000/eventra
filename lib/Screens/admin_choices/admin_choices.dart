import 'package:eventra/widgets/admin_bottom_navBar.dart';
import 'package:flutter/material.dart';

class AdminChoices extends StatefulWidget {
  const AdminChoices({Key? key}) : super(key: key);

  @override
  _AdminChoicesState createState() => _AdminChoicesState();
}

class _AdminChoicesState extends State<AdminChoices> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Create New",
            style: TextStyle(color: Color(0xFF000000)),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    primary: Colors.black,
                    backgroundColor: Color(0xFFD0D1D5),
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.event,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "New Event",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    primary: Colors.black,
                    backgroundColor: Color(0xFFD0D1D5),
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "New Meeting",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    primary: Colors.black,
                    backgroundColor: Color(0xFFD0D1D5),
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "New Time",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AdminBottomNavigationBarTravel(),
      ),
    );
  }
}
