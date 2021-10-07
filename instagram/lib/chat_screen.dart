import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/main.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Container(
            color: Colors.black,
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,size: 28,),onPressed: (){
                                  Navigator.pop(context,MaterialPageRoute(builder: (context) => Insta()));
                                },),
                                margin: EdgeInsets.only(left: 10),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                child: Text(
                                  "dishant_8171",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.video_call_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.note_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
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
                            margin:
                            EdgeInsets.only(top: 28, left: 12, right: 12, bottom: 28),
                            width: double.infinity,
                            height: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white12),
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white54,
                                    size: 20,
                                  ),
                                  margin: EdgeInsets.only(left: 17),
                                ),
                                Container(
                                  child: Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white54, fontSize: 17),
                                  ),
                                  margin: EdgeInsets.only(left: 17),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              //color: Colors.pink,
                                border: Border(
                                    bottom: BorderSide(width: 1, color: Colors.white60))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      "Chat",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text("Rooms",
                                        style: TextStyle(color: Colors.white54)),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      "0 Requests",
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Shyam Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                            child: Row(
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
                                        height: 47,
                                        width: 47,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Bhavik Patel",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Shared a post  8h",
                                                style: TextStyle(color: Colors.white54),
                                              ),
                                              margin: EdgeInsets.only(left: 15,top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.white54,size: 28,),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
