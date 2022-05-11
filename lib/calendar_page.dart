import 'dart:async';
import 'package:date_count_down/countdown.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hail_app/all.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Material(
          color: HexColor("2C336A"),
          child: ListView(
            children: [
              const SizedBox(
                height: 5,
              ),
              buildMenuItem(
                text: "Home",
                onClicked: () => selectedItem(context, 0),
              ),
              buildMenuItem(
                text: "Services",
                onClicked: () => selectedItem(context, 1),
              ),
              buildMenuItem(
                  text: "Colleges", onClicked: () => selectedItem(context, 2)),
              buildMenuItem(
                  text: "News", onClicked: () => selectedItem(context, -1)),
              buildMenuItem(
                  text: "Announcements",
                  onClicked: () => selectedItem(context, 4)),
              const Divider(
                color: Colors.amber,
                thickness: 1,
              ),
              buildMenuItem(
                  text: "Contact Us",
                  onClicked: () => selectedItem(context, 5)),
              buildMenuItem(
                  text: "About Us", onClicked: () => selectedItem(context, 6)),
              buildMenuItem(
                  text: "Settings", onClicked: () => selectedItem(context, 7)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 58),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 66),
                      child: Container(
                        decoration: BoxDecoration(
                            color: HexColor("2C336A"),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MyHomePage()));
                          },
                          icon: const Icon(Icons.arrow_back),
                          color: HexColor("F5CA24"),
                          iconSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 45),
                      child: Image.asset('assets/image5.png'),
                      width: 250,
                      height: 75,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TableCalendar(
                focusedDay: selectedDay,
                firstDay: DateTime(1990),
                lastDay: DateTime(2990),
                headerStyle: const HeaderStyle(formatButtonShowsNext: false),
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    //focusedDay = focusedDay;
                  });
                },
                calendarFormat: format,
                onFormatChanged: (CalendarFormat _format) {
                  setState(() {
                    format = _format;
                  });
                },
                calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    selectedDecoration: BoxDecoration(
                        color: HexColor("2C336A"), shape: BoxShape.circle)),
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(selectedDay, date);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Time Left For",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: HexColor("2C336A"),
                  fontSize: 15,
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text("Droping a Course:",
                        style: TextStyle(
                          color: HexColor("2C336A"),
                          fontSize: 15,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Text(
                      CountDown().timeLeft(
                          DateTime.parse("2022-01-03"), "Elapsed!",
                          longDateName: false),
                      style: TextStyle(
                        color: HexColor("2C336A"),
                        fontSize: 15,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 46),
                    child: Text("MidTerm Exams:",
                        style: TextStyle(
                          color: HexColor("2C336A"),
                          fontSize: 15,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Text(
                      CountDown().timeLeft(
                          DateTime.parse("2022-01-13"), "Elapsed!",
                          longDateName: false),
                      style: TextStyle(
                        color: HexColor("2C336A"),
                        fontSize: 15,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 64),
                    child: Text("Final Exams:",
                        style: TextStyle(
                          color: HexColor("2C336A"),
                          fontSize: 15,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Text(
                      CountDown().timeLeft(
                          DateTime.parse("2022-02-03"), "Elapsed!",
                          longDateName: false),
                      style: TextStyle(
                        color: HexColor("2C336A"),
                        fontSize: 15,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 63),
                    child: Text("Registering \nCourses:",
                        style: TextStyle(
                          color: HexColor("2C336A"),
                          fontSize: 15,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Text(
                      CountDown().timeLeft(
                          DateTime.parse("2022-02-25"), "Elapsed!",
                          longDateName: false),
                      style: TextStyle(
                        color: HexColor("2C336A"),
                        fontSize: 15,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
