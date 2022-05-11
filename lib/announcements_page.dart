import 'package:flutter/material.dart';
import 'package:hail_app/all.dart';
import 'package:hexcolor/hexcolor.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({Key? key}) : super(key: key);

  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
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
                  onClicked: () => selectedItem(context, 0),
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
                    onClicked: () => selectedItem(context, -1)),
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
        padding: const EdgeInsets.symmetric(horizontal: 8),
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
                height: 5,
              ),
              const Text.rich(TextSpan(
                  text: "Announcements",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontFamily: 'RobotoMono',
                    fontWeight: FontWeight.w700,
                  ))),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      LargeButtonCard(
                        inputText:
                            "College of Computer scinece and information systems looking for teachers",
                        image: 'assets/image4.png',
                        onTap: ArticlePage(
                          index: 1,
                          inputText:
                              "College of Computer scinece and information systems looking for teachers",
                          image: 'assets/image4.png',
                          scaffoldKey: scaffoldKey,
                        ),
                      ),
                      LargeButtonCard(
                        inputText:
                            "College of Medicine looking for teachers with a Phd in Bioengineering",
                        image: 'assets/image4.png',
                        onTap: ArticlePage(
                          index: 1,
                          inputText:
                              "College of Medicine looking for teachers with a Phd in Bioengineering",
                          image: 'assets/image4.png',
                          scaffoldKey: scaffoldKey,
                        ),
                      ),
                      LargeButtonCard(
                        inputText: "Sign Up for University's Football Team! ",
                        image: 'assets/image4.png',
                        onTap: ArticlePage(
                          index: 1,
                          inputText: "Sign Up for University's Football Team!",
                          image: 'assets/image4.png',
                          scaffoldKey: scaffoldKey,
                        ),
                      ),
                      LargeButtonCard(
                        inputText: "1442/2021 Year's Calendar",
                        image: 'assets/image4.png',
                        onTap: AnnouncementsPage(),
                      ),
                      LargeButtonCard(
                        inputText: "Final Exams Dates for 1441/2020",
                        image: 'assets/image4.png',
                        onTap: AnnouncementsPage(),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
