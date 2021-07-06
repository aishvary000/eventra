import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeCalendarPage extends StatefulWidget {
  @override
  _HomeCalendarPageState createState() => _HomeCalendarPageState();
}

class _HomeCalendarPageState extends State<HomeCalendarPage> {
  late CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF00b8d4),
                Color(0xFF4db6ac),
                Color(0xFF00897b),
              ],
              stops: [0.1, 0.5, 1.0],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                todayColor: Colors.black,
                selectedColor: Theme.of(context).primaryColor,
                todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    color: Colors.white),
              ),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF00b8d4),
                      Color(0xFF4db6ac),
                      Color(0xFF00897b),
                    ],
                    stops: [0.1, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(22.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date, events, _) {
                print(date.toUtc());
              },
              builders: CalendarBuilders(
                dowWeekendBuilder: (context, day) {
                  return Center(
                    child: Text(
                      day,
                      style: TextStyle(color: Colors.teal[700]),
                    ),
                  );
                },
                weekendDayBuilder: (context, day, events) {
                  return Center(
                    child: Container(
                      color: day.weekday == DateTime.sunday
                          ? Colors.white
                          : Colors.white,
                      width: 40.0,
                      height: 40.0,
                      child: Center(
                        child: Text('${day.day}'),
                      ),
                    ),
                  );
                },
                outsideWeekendDayBuilder: (context, day, events) {
                  return Center(
                      child: Container(
                    color: day.weekday == DateTime.sunday
                        ? Colors.white
                        : Colors.white,
                    width: 40.0,
                    height: 40.0,
                    child: Center(
                      child: Text(
                        '${day.day}',
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(color: Colors.grey),
                      ),
                    ),
                  ));
                },
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF00b8d4),
                              Color(0xFF4db6ac),
                              Color(0xFF00897b),
                            ],
                            stops: [
                              0.1,
                              0.5,
                              1.0
                            ]),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        // color: Colors.pinkAccent,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.4, 1],
                          colors: [
                            Color(0xFFF06292),
                            Color(0xFF64B5F6),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            )
          ],
        ),
      ),
    );
  }
}
