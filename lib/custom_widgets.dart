import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'all.dart';

class ButtonCards extends StatelessWidget {
  final String inputText;
  final String image;
  final Widget onTap;
  const ButtonCards(
      {required this.inputText, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(1, 1, 1, 0),
      height: 200,
      width: 180,
      child: Card(
        color: HexColor("2C336A"),
        clipBehavior: Clip.antiAlias,
        elevation: 7,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Stack(
          children: [
            Positioned(
              top: 115,
              left: 5,
              right: 5,
              bottom: 2,
              child: Text.rich(TextSpan(
                  text: inputText,
                  style: TextStyle(
                    fontSize: 16,
                    color: HexColor("F5CA24"),
                  ))),
            ),
            Ink.image(
              alignment: Alignment.topCenter,
              image: AssetImage(image),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => onTap));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LargeButtonCard extends StatelessWidget {
  final String inputText;
  final String image;
  final Widget onTap;
  const LargeButtonCard(
      {required this.inputText, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 120,
        width: 400,
        child: Card(
          color: HexColor("2C336A"),
          clipBehavior: Clip.antiAlias,
          elevation: 7,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => onTap));
            },
            child: Stack(
              children: [
                Positioned(
                  top: 3,
                  left: 135,
                  right: 3,
                  bottom: 2,
                  child: Text.rich(TextSpan(
                      text: inputText,
                      style: TextStyle(
                        fontSize: 16,
                        color: HexColor("F5CA24"),
                      ))),
                ),
                Ink.image(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                  width: 130,
                  image: AssetImage(image),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
