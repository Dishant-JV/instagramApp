import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/chat_screen.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/reels_screen.dart';
import 'package:instagram/search_screen.dart';

import 'activity_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Insta(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  List<Widget> pageList = [
    Home(),
    Chat(),
    Search(),
    Reels(),
    Activity(),
    Profile(),
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Container(
        child: Column(
          children: [
            Expanded(
              child: pageList[currentIndex],
            ),
            Container(
              height: 45,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap:(){
                      setState(() {
                        currentIndex=0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 32,
                    ),
                    onTap: () {
                      setState(() {
                        currentIndex=1;
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex=2;
                      });
                    },
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex=3;
                      });
                    },
                    child: Icon(
                      Icons.favorite_outline_sharp,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex=4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo.JPG",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
