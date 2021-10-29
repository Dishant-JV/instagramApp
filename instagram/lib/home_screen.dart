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
  int index =0;
  int index1=0;
  int index2=0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5,left: 20),
                                height: 38,
                                width: 122,
                                child: Image.asset("assets/images/insta_text.png",color: Colors.white,fit: BoxFit.cover,),
                              ),
                            ],
                          )
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white,width: 1.5)
                        ),
                        child: Icon(Icons.add,color: Colors.white,size: 20,),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 20),
                        child: Icon(Icons.message_sharp,color: Colors.white,),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 115,
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 3, bottom: 8),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                bottom: BorderSide(color: Colors.white24, width: 0),
                              ),),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15,left: 6),
                                    child: Column(
                                      children: [
                                        Stack(
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
                                              height: 65,
                                              width: 65,
                                              margin: EdgeInsets.only(left: 10),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 55,top: 46),
                                              height: 18,
                                              width: 18,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue.shade600.withOpacity(0.9),
                                                  shape: BoxShape.circle
                                              ),
                                              child: Icon(Icons.add,color: Colors.white,size: 19,),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 7, left: 5),
                                          child: Text(
                                            "Your story",
                                            style:
                                            TextStyle(color: Colors.white, fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
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
                                            height: 65,
                                            width: 65,
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
                                          height: 70,
                                          width: 70,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "piyush12_",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 12),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    ),
                                    margin: EdgeInsets.only(left: 15,top: 13),
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
                                            height: 65,
                                            width: 65,
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
                                          height: 70,
                                          width: 70,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "piyush12_",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 12),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    ),
                                    margin: EdgeInsets.only(left: 15,top: 13),
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
                                            height: 65,
                                            width: 65,
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
                                          height: 70,
                                          width: 70,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "piyush12_",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 12),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    ),
                                    margin: EdgeInsets.only(left: 15,top: 13),
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
                                            height: 65,
                                            width: 65,
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
                                          height: 70,
                                          width: 70,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "piyush12_",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 12),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    ),
                                    margin: EdgeInsets.only(left: 15,top: 13),
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
                                            height: 65,
                                            width: 65,
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
                                          height: 70,
                                          width: 70,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "piyush12_",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 12),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    ),
                                    margin: EdgeInsets.only(left: 15,top: 13),
                                  ),
                                ],
                              ),
                            ),
                          ), //[story container finish]
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.black,
                                  width: double.infinity,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
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
                                                  height: 30,
                                                  width: 31,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                      colors: [Colors.yellow, Colors.red]),
                                                  border: Border.all(
                                                      color: Colors.white10, width: 2),
                                                ),
                                                height: 35,
                                                width: 35,
                                                margin: EdgeInsets.only(left: 13),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 11),
                                                child: Text(
                                                  "gamdiyo",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
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
                                  height: 380,
                                  child: Image.asset(
                                    "assets/images/demo5.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  height: 39,
                                  color: Colors.black,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                setState(() {
                                                  index1 =1;
                                                });
                                              },
                                              child: index1 == 0 ? Container(
                                                child: Icon(
                                                  Icons.favorite_outline_rounded,
                                                  size: 29,
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(left: 15),
                                              ) :
                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    index1 = 0;
                                                  });
                                                },
                                                child: index1 == 1 ? Container(
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 29,
                                                    color: Colors.red,
                                                  ),
                                                  margin: EdgeInsets.only(left: 15),
                                                ) : Container(
                                                  child: Icon(
                                                    Icons.favorite_outline_rounded,
                                                    size: 29,
                                                    color: Colors.white,
                                                  ),
                                                  margin: EdgeInsets.only(left: 15),
                                                )
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.chat_bubble_outline,
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
                                        child: Icon(
                                          Icons.file_download,
                                          size: 29,
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(right: 15),
                                      ),
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
                                      Expanded(
                                        child: Row(
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
                                      ),
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
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 293, top: 3),
                                  child: Text(
                                    "2 hours ago",
                                    style: TextStyle(color: Colors.white60, fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.black,
                                  width: double.infinity,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
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
                                                  height: 30,
                                                  width: 31,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                      colors: [Colors.yellow, Colors.red]),
                                                  border: Border.all(
                                                      color: Colors.white10, width: 2),
                                                ),
                                                height: 35,
                                                width: 35,
                                                margin: EdgeInsets.only(left: 13),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 11),
                                                child: Text(
                                                  "gamdiyo",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
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
                                  height: 380,
                                  child: Image.asset(
                                    "assets/images/demo5.jpg",
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
                                      Expanded(
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                setState(() {
                                                  index2 =1;
                                                });
                                              },
                                              child: index2 == 0 ? Container(
                                                child: Icon(
                                                  Icons.favorite_outline_rounded,
                                                  size: 29,
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(left: 15),
                                              ) :
                                              InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      index2 = 0;
                                                    });
                                                  },
                                                  child: index2 == 1 ? Container(
                                                    child: Icon(
                                                      Icons.favorite,
                                                      size: 29,
                                                      color: Colors.red,
                                                    ),
                                                    margin: EdgeInsets.only(left: 15),
                                                  ) : Container(
                                                    child: Icon(
                                                      Icons.favorite_outline_rounded,
                                                      size: 29,
                                                      color: Colors.white,
                                                    ),
                                                    margin: EdgeInsets.only(left: 15),
                                                  )
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.chat_bubble_outline,
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
                                        child: Icon(
                                          Icons.file_download,
                                          size: 29,
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(right: 15),
                                      ),
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
                                      Expanded(
                                        child: Row(
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
                                      ),
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
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 293, top: 3),
                                  child: Text(
                                    "2 hours ago",
                                    style: TextStyle(color: Colors.white60, fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.black,
                                  width: double.infinity,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
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
                                                  height: 30,
                                                  width: 31,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                      colors: [Colors.yellow, Colors.red]),
                                                  border: Border.all(
                                                      color: Colors.white10, width: 2),
                                                ),
                                                height: 35,
                                                width: 35,
                                                margin: EdgeInsets.only(left: 13),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 11),
                                                child: Text(
                                                  "gamdiyo",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
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
                                  height: 380,
                                  child: Image.asset(
                                    "assets/images/demo5.jpg",
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
                                      Expanded(
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                setState(() {
                                                  index =1;
                                                });
                                              },
                                              child: index == 0 ? Container(
                                                child: Icon(
                                                  Icons.favorite_outline_rounded,
                                                  size: 29,
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(left: 15),
                                              ) :
                                              InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      index = 0;
                                                    });
                                                  },
                                                  child: index == 1 ? Container(
                                                    child: Icon(
                                                      Icons.favorite,
                                                      size: 29,
                                                      color: Colors.red,
                                                    ),
                                                    margin: EdgeInsets.only(left: 15),
                                                  ) : Container(
                                                    child: Icon(
                                                      Icons.favorite_outline_rounded,
                                                      size: 29,
                                                      color: Colors.white,
                                                    ),
                                                    margin: EdgeInsets.only(left: 15),
                                                  )
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.chat_bubble_outline,
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
                                        child: Icon(
                                          Icons.file_download,
                                          size: 29,
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(right: 15),
                                      ),
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
                                      Expanded(
                                        child: Row(
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
                                      ),
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
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 293, top: 3),
                                  child: Text(
                                    "2 hours ago",
                                    style: TextStyle(color: Colors.white60, fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )


      ),
    );
  }
}
