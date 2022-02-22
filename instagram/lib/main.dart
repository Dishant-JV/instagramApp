// @dart=2.9
import 'dart:async';
import 'dart:io';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:instagram/Whatsapp/wp_home.dart';
import 'package:instagram/Whatsapp/wp_person_chat.dart';
import 'package:instagram/demos/dialog_demo.dart';
import 'package:instagram/demos/drawer_demo.dart';
import 'package:instagram/demos/get_counter.dart';
import 'package:instagram/demos/listview_demo.dart';
import 'package:instagram/demos/model_demo.dart';
import 'package:instagram/demos/pageview_demo.dart';
import 'package:instagram/demos/pageview_demo2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/chat_screen.dart';
import 'package:instagram/demos/demo_screen.dart';
import 'package:instagram/demos/radio_button_demo.dart';
import 'package:instagram/demos/sharedpreference_demo.dart';
import 'package:instagram/demos/slider_demo_screen.dart';
import 'package:instagram/demos/stack_demo_screen.dart';
import 'package:instagram/demos/state_demo.dart';
import 'package:instagram/demos/textformfield_demo.dart';
import 'package:instagram/demos/willpop_demo.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/profile/change_profile.dart';
import 'package:instagram/profile/login.dart';
import 'package:instagram/profile/signup.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/reels_screen.dart';
import 'package:instagram/search_screen.dart';
import 'package:instagram/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'activity_screen.dart';
import 'demos/SharedPreference/shared_login.dart';
import 'demos/SharedPreference/sharedhome.dart';
import 'demos/SharedPreference/splash_shardpreference.dart';
import 'demos/animated_drawer.dart';
import 'demos/demo_screen2.dart';
import 'demos/downloading_screen.dart';
import 'demos/drawer_demo2.dart';
import 'demos/drawer_demo3.dart';
import 'demos/dropdown_button_demo.dart';
import 'demos/expansion_tile_card_demo.dart';
import 'demos/gridview_demo.dart';
import 'demos/photo_gallery/photo_gallery.dart';
import 'demos/textformfield_demo2.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      home: PhotoGallery(),
      debugShowCheckedModeBanner: false,
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class Insta extends StatefulWidget {
  const Insta({Key key}) : super(key: key);

  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  static const primary = Color(0xffF4D29A);
  static const light_yellow = Color(0xffF2E7C5);
  static const golden_yellow = Color(0xffC6A26F);
  static const coffee_dark = Color(0xff4C3F35);
  static const coffee_light = Color(0xff6e5847);
  static const black = Colors.black;
  static const white = Colors.white;
  static const grey = Colors.grey;
  static const light_grey = Colors.black12;
  static const platinum = Color(0xffE5E4E2);
  static const purple = Color(0xff7B1FA2);
  static const light_purple = Color(0xffDEC2F3);
  static const red = Colors.red;
  static const blue = Color(0xff3F51B5);
  static const fBlue = Color(0xff3F558F);
  static const endColor = Color(0xff3d0890);
  static const centerColor = Color(0xff710792);
  static const startColor = Color(0xff980694);
  static const Color grey_box_color = Color(0xffEEEEEE);

  UpdatePhoto updatePhoto = Get.put(UpdatePhoto());
  String profileImage;
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
            Expanded(child: pageList[currentIndex]),
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
                              ? Obx(() => Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2.5),
                                      image: DecorationImage(
                                          image: FileImage(File(updatePhoto
                                              .photo.value
                                              .toString())),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 30,
                                    width: 30,
                                  ))
                              : Obx(() => Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: FileImage(File(updatePhoto
                                              .photo.value
                                              .toString())),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 30,
                                    width: 30,
                                  )),
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
