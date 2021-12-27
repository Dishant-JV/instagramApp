import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/chat_screen.dart';
import 'package:instagram/demos/demo_screen.dart';
import 'package:instagram/demos/listview_demo.dart';
import 'package:instagram/demos/radio_button_demo.dart';
import 'package:instagram/demos/sharedpreference_demo.dart';
import 'package:instagram/demos/slider_demo_screen.dart';
import 'package:instagram/demos/stack_demo_screen.dart';
import 'package:instagram/demos/state_demo.dart';
import 'package:instagram/demos/textformfield_demo.dart';
import 'package:instagram/demos/willpop_demo.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/profile/login.dart';
import 'package:instagram/profile/signup.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/reels_screen.dart';
import 'package:instagram/search_screen.dart';
import 'package:instagram/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'activity_screen.dart';
import 'demos/demo_screen2.dart';
import 'demos/textformfield_demo2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async {
    SystemUiOverlayStyle(statusBarColor: Colors.red);
    runApp(
      MaterialApp(
        home: Insta(),
        debugShowCheckedModeBanner: false,
      ),
    );
  });
}

class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  String? profileImage;

  loadImage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      profileImage = pref.getString('imagePath');
    });
  }

  List<Widget> pageList = [
    Home(),
    Search(),
    Reels(),
    Activity(),
    Profile(),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: pageList[currentIndex],
            ),
            MediaQuery.of(context).viewInsets.bottom <= 0
                ? Container(
                    height: 48,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                currentIndex = 0;
                              });
                            },
                            child: currentIndex == 0
                                ? Image.asset(
                                    "assets/images/main_home.png",
                                    color: Colors.white,
                                    height: 36,
                                    width: 36,
                                  )
                                : Container(
                                    child: Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                  )),
                        InkWell(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 29,
                          ),
                          onTap: () {
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                currentIndex = 2;
                              });
                            },
                            child: Container(
                              child: Image.asset(
                                "assets/images/home_reels.png",
                                color: Colors.white,
                                fit: BoxFit.cover,
                              ),
                              height: 27,
                              width: 27,
                            )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = 3;
                            });
                          },
                          child: currentIndex == 3
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 30,
                                )
                              : Icon(
                                  Icons.favorite_outline_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = 4;
                            });
                          },
                          child: currentIndex == 4
                              ? Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white,width: 2.5),
                              image: DecorationImage(
                                  image:
                                  FileImage(File(profileImage ?? "")),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                                  height: 30,
                                  width: 30,

                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            FileImage(File(profileImage ?? "")),
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
                : Container()
          ],
        ),
      ),
    );
  }
}
