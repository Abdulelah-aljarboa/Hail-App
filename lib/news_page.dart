import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hail_app/all.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
                  text: "News",
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
                            "The Strategic Plan Team \"18-23\" Holds It's First Meeting Under The Chairmanship Of The Sector",
                        image: 'assets/image1.jpg',
                        onTap: ArticlePage(
                          index: 0,
                          inputText:
                              "The Strategic Plan Team \"18-23\" Holds It's First Meeting Under The Chairmanship Of The Sector",
                          image: 'assets/image1.jpg',
                          scaffoldKey: scaffoldKey,
                        ),
                      ),
                      LargeButtonCard(
                        inputText:
                            "\"Creativity Oasis\" is Preparing For The Next Phase With Workshop",
                        image: 'assets/image2.jpg',
                        onTap: ArticlePage(
                          index: 0,
                          inputText:
                              "\"Creativity Oasis\" is Preparing For The Next Phase With Workshop",
                          image: 'assets/image2.jpg',
                          scaffoldKey: scaffoldKey,
                        ),
                      ),
                      LargeButtonCard(
                        inputText:
                            "The Deen of The University of Hail Sponsored A Ceremony Honoring Distinguished Researchers",
                        image: 'assets/image3.jpg',
                        onTap: ArticlePage(
                          index: 0,
                          inputText:
                              "The Deen of The University of Hail Sponsored A Ceremony Honoring Distinguished Researchers",
                          image: 'assets/image3.jpg',
                          scaffoldKey: scaffoldKey,
                        ),
                      ),
                      LargeButtonCard(
                        inputText:
                            "Hail University Organizes Breast Cancer Awareness Campaign",
                        image: 'assets/image4.png',
                        onTap: NewsPage(),
                      ),
                      LargeButtonCard(
                        inputText:
                            "The Strategic Plan Team \"18-23\" Holds It's First Meeting Under The Chairmanship Of The Sector...",
                        image: 'assets/image4.png',
                        onTap: NewsPage(),
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
