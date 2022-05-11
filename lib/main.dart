import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hail_app/calendar_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hail_app/all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hail App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'RobotoMono',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40.0),
            bottomRight: Radius.circular(35.0)),
        child: Drawer(
          child: Material(
            color: HexColor("2C336A"),
            child: ListView(
              children: [
                const SizedBox(
                  height: 5,
                ),
                buildMenuItem(
                  text: "Home",
                  onClicked: () => selectedItem(context, -1),
                ),
                buildMenuItem(
                  text: "Services",
                  onClicked: () => selectedItem(context, 1),
                ),
                buildMenuItem(
                    text: "Colleges",
                    onClicked: () => selectedItem(context, 2)),
                buildMenuItem(
                    text: "News", onClicked: () => selectedItem(context, 3)),
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
                    text: "About Us",
                    onClicked: () => selectedItem(context, 6)),
                buildMenuItem(
                    text: "Settings",
                    onClicked: () => selectedItem(context, 7)),
              ],
            ),
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
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: HexColor("2C336A"),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: IconButton(
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          icon: const Icon(Icons.list),
                          color: HexColor("F5CA24"),
                          iconSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: HexColor("2C336A"),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.language),
                        color: HexColor("F5CA24"),
                        iconSize: 40,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.accessibility,
                  color: HexColor("F5CA24"),
                  size: 70,
                ),
                label: Text(" Services   ",
                    style: TextStyle(
                      color: HexColor("F5CA24"),
                      fontSize: 35,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w400,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: HexColor("2C336A"),
                  elevation: 10,
                  fixedSize: const Size(400, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalendarPage()));
                },
                icon: Icon(
                  Icons.calendar_today_rounded,
                  color: HexColor("F5CA24"),
                  size: 70,
                ),
                label: Text(
                  "Academic Calendar",
                  style: TextStyle(
                    color: HexColor("F5CA24"),
                    fontSize: 24,
                    fontFamily: 'RobotoMono',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: HexColor("2C336A"),
                  elevation: 10,
                  fixedSize: const Size(400, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 15),
                child: Text.rich(TextSpan(
                    text: "News",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w700,
                    ))),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias,
                child: Row(
                  // News Row
                  children: [
                    ButtonCards(
                      inputText: "\"Creativity Oasis\" is preparing for..",
                      image: 'assets/image2.jpg',
                      onTap: ArticlePage(
                        index: 2,
                        inputText:
                            "\"Creativity Oasis\" is Preparing For The Next Phase With Workshop",
                        image: 'assets/image2.jpg',
                        scaffoldKey: scaffoldKey,
                      ),
                    ),
                    ButtonCards(
                      inputText:
                          "The Deen of The University of Hail Sponsored..",
                      image: 'assets/image3.jpg',
                      onTap: ArticlePage(
                        index: 2,
                        inputText:
                            "The Deen of The University of Hail Sponsored A Ceremony Honoring Distinguished Researchers",
                        image: 'assets/image3.jpg',
                        scaffoldKey: scaffoldKey,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 15),
                child: Text.rich(TextSpan(
                    text: "Announcements",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w700,
                    ))),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias,
                child: Row(
                  //Announcements Row
                  children: [
                    ButtonCards(
                      inputText: "College of Medicine looking for teachers...",
                      image: 'assets/image4.png',
                      onTap: ArticlePage(
                        index: 2,
                        inputText:
                            "College of Medicine looking for teachers with a Phd in Bioengineering",
                        image: 'assets/image4.png',
                        scaffoldKey: scaffoldKey,
                      ),
                    ),
                    ButtonCards(
                      inputText: "Sign Up for University's Football Team!",
                      image: 'assets/image4.png',
                      onTap: ArticlePage(
                        index: 2,
                        inputText: "Sign Up for University's Football Team!",
                        image: 'assets/image4.png',
                        scaffoldKey: scaffoldKey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  VoidCallback? onClicked,
}) {
  final color = HexColor("F5CA24");

  return ListTile(
    title: Text(
      text,
      style: TextStyle(color: color, fontFamily: 'RobotoMono', fontSize: 22),
    ),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case -1:
      //this case will be invoked only by the same page that we are in so we do not transition to the same page
      break;
    case 0: //HOME PAGE
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
      break;
    case 1: //SERVICES PAGE

      break;
    case 2: //COLLEGES PAGE

      break;
    case 3: //NEWS PAGE
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const NewsPage()));
      break;
    case 4: //ANNOUNCEMENTS PAGE
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AnnouncementsPage()));
      break;
    case 5: //CONTACT US PAGE

      break;
    case 6: //ABOUT US PAGE

      break;
    case 7: //SETTINGS PAGE

      break;
  }
}
