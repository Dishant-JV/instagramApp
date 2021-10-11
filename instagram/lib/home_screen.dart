import 'package:flutter/material.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/search_screen.dart';

import 'activity_screen.dart';
import 'chat_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        // foregroundColor: Colors.black26,
        toolbarHeight: 50,
        title: Text("Instagram"),
        centerTitle: true,
        leading: Icon(Icons.camera_alt),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: InkWell(
              child: Icon(Icons.message),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Chat()));
              },
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: (Column(
                  children: [
                    Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/demo.JPG",
                                            ),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                      ),
                                      height: 60,
                                      width: 60,
                                      margin: EdgeInsets.only(left: 10),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 7, left: 5),
                                      child: Text(
                                        "Your story",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo2.JPG",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(colors: [
                                          Colors.yellow,
                                          Colors.red,
                                        ]),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "piyush12_",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo3.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                        gradient: LinearGradient(
                                          colors: [Colors.yellow, Colors.red],
                                        ),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "dishant_8171",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo4.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                        gradient: LinearGradient(colors: [
                                          Colors.yellow,
                                          Colors.red
                                        ]),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "harsh_67",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo5.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                        gradient: LinearGradient(colors: [
                                          Colors.yellow,
                                          Colors.red
                                        ]),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "ayushi_AL",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo7.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(colors: [
                                          Colors.yellow,
                                          Colors.red
                                        ]),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "jenil_k11",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo6.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(colors: [
                                          Colors.yellow,
                                          Colors.red
                                        ]),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "ps@1_2",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo3.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black, width: 3)),
                                        height: 60,
                                        width: 60,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(colors: [
                                          Colors.yellow,
                                          Colors.red
                                        ]),
                                        border: Border.all(
                                            color: Colors.white10, width: 2),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "ram_098",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          ),
                        ),
                        height: 104,
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 3, bottom: 3),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            bottom: BorderSide(color: Colors.white24, width: 0),
                          ),
                        )),
                    Container(
                      height: 55,
                      color: Colors.black,
                      width: double.infinity,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/demo.JPG",
                                            ),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
                                    height: 35,
                                    width: 35,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                    gradient: LinearGradient(
                                        colors: [Colors.yellow, Colors.red]),
                                    border: Border.all(
                                        color: Colors.white10, width: 2),
                                  ),
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.only(left: 8),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 9),
                                  child: Text(
                                    "gamdiyo",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_vert,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 350,
                      child: Image.asset(
                        "assets/images/demo4.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6),
                      height: 39,
                      color: Colors.black,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.favorite_outline_rounded,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.comment_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.near_me_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.get_app,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.save_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: 39,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 18),
                                child: RichText(
                                    text: TextSpan(
                                        text: "Liked by ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: "dishant_8171..",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ])),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 4, left: 16),
                                  child: Text(
                                    "View all 100 comments",
                                    style: TextStyle(color: Colors.white60),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
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
                                margin: EdgeInsets.only(left: 19),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                  "Add a comment...",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.dashboard_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.download_done,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 293, top: 3),
                      child: Text(
                        "2 hours ago",
                        style: TextStyle(color: Colors.white60, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      height: 55,
                      color: Colors.black,
                      width: double.infinity,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/demo.JPG",
                                            ),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
                                    height: 35,
                                    width: 35,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                    gradient: LinearGradient(
                                        colors: [Colors.yellow, Colors.red]),
                                    border: Border.all(
                                        color: Colors.white10, width: 2),
                                  ),
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.only(left: 8),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 9),
                                  child: Text(
                                    "gamdiyo",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_vert,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 350,
                      child: Image.asset(
                        "assets/images/demo7.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6),
                      height: 39,
                      color: Colors.black,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.favorite_outline_rounded,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.comment_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.near_me_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.get_app,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.save_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: 39,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 18),
                                child: RichText(
                                    text: TextSpan(
                                        text: "Liked by ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: "dishant_8171..",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ])),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 4, left: 16),
                                  child: Text(
                                    "View all 100 comments",
                                    style: TextStyle(color: Colors.white60),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
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
                                margin: EdgeInsets.only(left: 19),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                  "Add a comment...",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.dashboard_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.download_done,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 293, top: 3),
                      child: Text(
                        "2 hours ago",
                        style: TextStyle(color: Colors.white60, fontSize: 11),
                      ),
                    ),
                    Container(
                      height: 55,
                      color: Colors.black,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 13),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/demo.JPG",
                                            ),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
                                    height: 35,
                                    width: 35,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                    gradient: LinearGradient(
                                        colors: [Colors.yellow, Colors.red]),
                                    border: Border.all(
                                        color: Colors.white10, width: 2),
                                  ),
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.only(left: 8),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 9),
                                  child: Text(
                                    "gamdiyo",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_vert,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 350,
                      child: Image.asset(
                        "assets/images/demo.JPG",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6),
                      height: 39,
                      color: Colors.black,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.favorite_outline_rounded,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.comment_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.near_me_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 15),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.get_app,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.save_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: 39,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 18),
                                child: RichText(
                                    text: TextSpan(
                                        text: "Liked by ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: "dishant_8171..",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ])),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 4, left: 16),
                                  child: Text(
                                    "View all 100 comments",
                                    style: TextStyle(color: Colors.white60),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
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
                                margin: EdgeInsets.only(left: 19),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                  "Add a comment...",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.dashboard_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.download_done,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 293, top: 3),
                      child: Text(
                        "2 hours ago",
                        style: TextStyle(color: Colors.white60, fontSize: 11),
                      ),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
