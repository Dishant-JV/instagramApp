import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile_screen.dart';
import 'package:photo_view/photo_view.dart';

class ProfileImages extends StatefulWidget {
  final String ?pImage;
  const ProfileImages({Key? key, this.pImage}) : super(key: key);

  @override
  _ProfileImagesState createState() => _ProfileImagesState();
}

class _ProfileImagesState extends State<ProfileImages> {

  @override
  int index1 =0;
  int bindex =0;
  int i=0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Profile(
                          )));
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 30),
                        child:Icon(Icons.arrow_back,color: Colors.white,size: 25,) ,
                      ),
                    ),
                    Container(
                      child: Text("Posts",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
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
                                    margin: EdgeInsets.only(left: 12),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.hindustantimes.com/img/2021/10/24/550x309/kohli-t20-wc-new-getty_1635068337484_1635068341564.jpg",
                                            ),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black,
                                            width: 2)),
                                    height: 30,
                                    width: 31,
                                  ),
                                  Container(
                                    margin:
                                    EdgeInsets.only(left: 11),
                                    child: Text(
                                      "dishant_7181",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w500),
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
                    InkWell(
                        onDoubleTap: () {
                          setState(() {
                            index1 = 1;
                          });
                        },
                        child: Container(
                          height: 380,
                          width: double.infinity,
                          child: PhotoView(
                            imageProvider:AssetImage(
                                widget.pImage??""
                            ),
                            minScale:
                            PhotoViewComputedScale.contained *
                                0.8,
                            maxScale:
                            PhotoViewComputedScale.contained *
                                0.8,
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 39,
                      color: Colors.black,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index1 = 1;
                                    });
                                  },
                                  child: index1 == 0
                                      ? Container(
                                    child: Icon(
                                      Icons
                                          .favorite_outline_rounded,
                                      size: 29,
                                      color: Colors.white,
                                    ),
                                    margin: EdgeInsets.only(
                                        left: 15),
                                  )
                                      : InkWell(
                                      onTap: () {
                                        setState(() {
                                          index1 = 0;
                                        });
                                      },
                                      child: index1 == 1
                                          ? Container(
                                        child: Icon(
                                          Icons.favorite,
                                          size: 29,
                                          color:
                                          Colors.red,
                                        ),
                                        margin: EdgeInsets
                                            .only(
                                            left: 15),
                                      )
                                          : Container(
                                        child: Icon(
                                          Icons
                                              .favorite_outline_rounded,
                                          size: 29,
                                          color: Colors
                                              .white,
                                        ),
                                        margin: EdgeInsets
                                            .only(
                                            left: 15),
                                      )),
                                ),
                                Container(
                                  child: Image.asset(
                                    "assets/images/main_comment.png",
                                    color: Colors.white,
                                    fit: BoxFit.cover,
                                  ),
                                  margin: EdgeInsets.only(left: 13),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.near_me_outlined,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(left: 13),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  bindex = 1;
                                });
                              },
                              child: bindex == 0
                                  ? Container(
                                child: Icon(
                                  Icons.bookmark_outline,
                                  size: 29,
                                  color: Colors.white,
                                ),
                                margin: EdgeInsets.only(
                                    right: 15),
                              )
                                  : InkWell(
                                onTap: () {
                                  setState(() {
                                    bindex = 0;
                                  });
                                },
                                child: bindex == 1
                                    ? Container(
                                  child: Icon(
                                    Icons.bookmark,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin:
                                  EdgeInsets.only(
                                      right: 15),
                                )
                                    : Container(
                                  child: Icon(
                                    Icons.bookmark,
                                    size: 29,
                                    color: Colors.white,
                                  ),
                                  margin:
                                  EdgeInsets.only(
                                      right: 15),
                                ),
                              )),
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
                                              text: "harshad_6716",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight:
                                                  FontWeight.bold)),
                                        ])),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 4, left: 16),
                                  child: Text(
                                    "View all 100 comments",
                                    style: TextStyle(
                                        color: Colors.white60),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
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
                                        color: Colors.white60,
                                        fontSize: 15),
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
                      width: double.infinity,
                      height: 20,
                      color: Colors.black,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "2 hours ago",
                        style: TextStyle(
                            color: Colors.white60, fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
