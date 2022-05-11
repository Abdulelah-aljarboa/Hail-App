import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hail_app/calendar_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hail_app/all.dart';

class ArticlePage extends StatelessWidget {
  final int index;
  final String inputText;
  final String image;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const ArticlePage(
      {Key? key,
      required this.index,
      required this.inputText,
      required this.image,
      required this.scaffoldKey})
      : super(key: key);

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
                            if (index == 0) {
                              //means that we came from news page
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NewsPage()));
                            } else if (index == 1) {
                              //means that we came from announcements page
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AnnouncementsPage()));
                            } else {
                              //means that we came from home page
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyHomePage()));
                            }
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
                height: 20,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Image.asset(image),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                inputText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Posuere urna nec tincidunt praesent semper feugiat nibh. Lacus sed viverra tellus in hac habitasse platea. Tincidunt eget nullam non nisi est sit. Mi sit amet mauris commodo. At lectus urna duis convallis convallis tellus id interdum. Suscipit tellus mauris a diam maecenas sed enim ut. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Urna porttitor rhoncus dolor purus non enim praesent elementum. Volutpat diam ut venenatis tellus in metus vulputate. Libero justo laoreet sit amet cursus sit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Vulputate dignissim suspendisse in est ante. Euismod lacinia at quis risus.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Posuere urna nec tincidunt praesent semper feugiat nibh. Lacus sed viverra tellus in hac habitasse platea. Tincidunt eget nullam non nisi est sit. Mi sit amet mauris commodo. At lectus urna duis convallis convallis tellus id interdum. Suscipit tellus mauris a diam maecenas sed enim ut. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Urna porttitor rhoncus dolor purus non enim praesent elementum. Volutpat diam ut venenatis tellus in metus vulputate. Libero justo laoreet sit amet cursus sit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Vulputate dignissim suspendisse in est ante. Euismod lacinia at quis risus.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
