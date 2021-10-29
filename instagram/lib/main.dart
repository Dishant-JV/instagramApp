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
              height: 48,
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
                    child: Image.asset("assets/images/main_home.png",color: Colors.white,height: 36,width: 36,)
                  ),
                  InkWell(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 29,
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
                    child: Container(child: Image.asset("assets/images/home_reels.png",color: Colors.white,fit: BoxFit.cover,),height: 27,width: 27)
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
