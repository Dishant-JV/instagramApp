import 'package:flutter/material.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/search_screen.dart';
import 'package:instagram/show_image.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'activity_screen.dart';
import 'chat_screen.dart';
import 'package:photo_view/photo_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final imageList = [
    'assets/images/demo3.jpg',
    'assets/images/demo4.jpg',
    'assets/images/demo5.jpg'
  ];
  final List<String> storyImages=[
    "http://starsunfolded.com/wp-content/uploads/2014/05/Alia_Bhatt.jpg",
    "https://themumbaicity.com/wp-content/uploads/2021/06/anu.jpg",
    "https://www.bollywoodhungama.com/wp-content/uploads/2021/10/salman-khan.jpg",
    "https://lh3.googleusercontent.com/proxy/uR34igOaQj7pQEsDdcFWYIpvp-rUSJq9rr9ZF1u7dihPtEHfbP_b8QzEM--imcY2tvt9vKkrLFnvRxAwDzMPGvdqhwmFB7HqOGFWesLOHuOxtGjDuFTySYQ8kwZ_0Cw-cSqXqMIWybAon0FEnvR0RxAH0ZvsjY72Hvk2X6OZ",
    "https://w0.peakpx.com/wallpaper/309/93/HD-wallpaper-aliabhatt-actress-alia-alia-bhat-alia-bhatt-bollywood.jpg"
  ];
  final List<String> storyName=['piyush_12','raj_9090','salman_2288','ketrina_921','alia_bhatt'];
  bool isLike=false;
  bool isSave=false;

  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        // foregroundColor: Colors.black26,
        toolbarHeight: 50,
        title:Image.asset("assets/images/insta_text.png",height: 60,width: 130,color: Colors.white,),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: (Column(
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
                                      height: 65,
                                      width: 65,
                                      margin: EdgeInsets.only(left: 10),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 7, left: 5),
                                      child: Text(
                                        "Your story",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
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
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo2.JPG",
=======
>>>>>>> 161fe9288f68aaa23f19ca79192573b7ea93382a
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            color: Colors.transparent,
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
                                margin: EdgeInsets.only(top: 5, left: 20),
                                height: 38,
                                width: 122,
                                child: Image.asset(
                                  "assets/images/insta_text.png",
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          )),
                      Container(
                        alignment: Alignment.center,
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                            Border.all(color: Colors.white, width: 1.5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, SwipeablePageRoute(builder: (BuildContext context)=>Chat()));
                            },
                            child: Container(
                                height: 26,
                                width: 26,
                                margin: EdgeInsets.only(left: 25, right: 20),
                                child: Image.asset(
                                  "assets/images/home_chat.png",
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 40),
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11),
                              )),
                        ],
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
                                bottom:
                                BorderSide(color: Colors.white24, width: 0),
                              ),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15, left: 6),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
                                                    ),
                                                    fit: BoxFit.cover),
                                                shape: BoxShape.circle,
                                              ),
                                              height: 65,
                                              width: 65,
                                              margin: EdgeInsets.only(left: 10),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 55, top: 46),
                                              height: 18,
                                              width: 18,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue.shade600
                                                      .withOpacity(0.9),
                                                  shape: BoxShape.circle),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 19,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin:
                                          EdgeInsets.only(top: 7, left: 5),
                                          child: Text(
                                            "Your story",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: storyName.length,
                                      itemBuilder: (BuildContext context, index) {
                                        return  Container(
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Images(
                                                                img:"",
                                                                nimg: storyImages[index],
                                                              )));
                                                },
                                                child: Container(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                              storyImages[index],
                                                            ),
                                                            fit: BoxFit.cover),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: Colors.black,
                                                            width: 3)),
                                                    height: 68,
                                                    width: 68,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    gradient: LinearGradient(colors: [
                                                      Colors.yellow,
                                                      Colors.red,
                                                    ]),
                                                    border: Border.all(
                                                        color: Colors.white10,
                                                        width: 2),
                                                  ),
                                                  height: 73,
                                                  width: 73,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 4,),
                                                child: Text(
                                                  storyName[index],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              )
                                            ],
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                          ),
                                          margin: EdgeInsets.only(left: 11, top: 13),
                                        );
                                      })
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
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.red
                                                      ]),
                                                  border: Border.all(
                                                      color: Colors.white10,
                                                      width: 2),
                                                ),
                                                height: 35,
                                                width: 35,
                                                margin:
                                                EdgeInsets.only(left: 13),
                                              ),
                                              Container(
                                                margin:
                                                EdgeInsets.only(left: 11),
                                                child: Text(
                                                  "gamdiyo",
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
                                Container(
                                  height: 380,
                                  width: double.infinity,
                                  child: PhotoView(
                                    imageProvider: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/6/66/Narendra_Modi_2021_%28cropped%29.jpg",
                                    ),
                                    minScale:
                                    PhotoViewComputedScale.contained *
                                        0.8,
                                    maxScale:
                                    PhotoViewComputedScale.contained *
                                        0.8,
                                  ),
                                ),
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
                                              onTap: (){
                                                setState(() {
                                                  isLike=!isLike;
                                                });
                                              },
                                              child: isLike == false ? Container(
                                                child: Icon(
                                                  Icons
                                                      .favorite_outline_rounded,
                                                  size: 29,
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 15),
                                              ) : Container(
                                                child: Icon(
                                                  Icons
                                                      .favorite,
                                                  size: 29,
                                                  color: Colors.red,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 15),
                                              ),
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
                                        onTap: (){
                                          setState(() {
                                            isSave=!isSave;
                                            final snackBar=SnackBar(backgroundColor: Colors.grey.shade900,margin: EdgeInsets.only(bottom: 220),behavior: SnackBarBehavior.floating,content: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(6),
                                                        image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/6/66/Narendra_Modi_2021_%28cropped%29.jpg"),fit: BoxFit.cover)
                                                    ),
                                                    height:35,
                                                    width: 35,
                                                  ),
                                                  Container(child: Text("Saved",style: TextStyle(fontWeight: FontWeight.w500),),
                                                    margin: EdgeInsets.only(left: 10),),
                                                ],
                                              ),
                                            ),
                                              duration:Duration(seconds: 2),
                                              action: SnackBarAction(
                                                label: "Save to Collection",
                                                onPressed: (){
                                                },
                                              ),
                                            );
                                            isSave == true ? ScaffoldMessenger.of(context).showSnackBar(snackBar): Container();
                                          });
                                        },
                                        child: isSave == false ? Container(
                                          child: Icon(
                                            Icons.bookmark_outline,
                                            size: 29,
                                            color: Colors.white,
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 15),
                                        ) : Container(
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 29,
                                            color: Colors.white,
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 15),
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
                                                            "assets/images/demo5.jpg",
                                                          ),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 2)),
                                                  height: 30,
                                                  width: 31,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.red
                                                      ]),
                                                  border: Border.all(
                                                      color: Colors.white10,
                                                      width: 2),
                                                ),
                                                height: 35,
                                                width: 35,
                                                margin:
                                                EdgeInsets.only(left: 13),
                                              ),
                                              Container(
                                                margin:
                                                EdgeInsets.only(left: 11),
                                                child: Text(
                                                  "Sanjna_Ganeshan",
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
                                Container(
                                    width: double.infinity,
                                    height: 380,
                                    child: PhotoViewGallery.builder(
                                        itemCount: imageList.length,
                                        builder: (context, index) {
                                          return PhotoViewGalleryPageOptions(
                                            imageProvider: AssetImage(
                                                imageList[index]),
                                            minScale: PhotoViewComputedScale.contained * 0.8,
                                            maxScale: PhotoViewComputedScale.covered * 0.8,);
                                        })),
                                Container(
                                  margin: EdgeInsets.only(top: 6),
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
                                              onTap: (){
                                                setState(() {
                                                  isLike=!isLike;
                                                });
                                              },
                                              child: isLike == false ? Container(
                                                child: Icon(
                                                  Icons
                                                      .favorite_outline_rounded,
                                                  size: 29,
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 15),
                                              ) : Container(
                                                child: Icon(
                                                  Icons
                                                      .favorite,
                                                  size: 29,
                                                  color: Colors.red,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 15),
                                              ),
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
                                        onTap: (){
                                          setState(() {
                                            isSave=!isSave;
                                          });
                                        },
                                        child: isSave == false ? Container(
                                          child: Icon(
                                            Icons.bookmark_outline,
                                            size: 29,
                                            color: Colors.white,
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 15),
                                        ) : Container(
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 29,
                                            color: Colors.white,
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 15),
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                          text:
                                                          "dishant_8171.. and thousand's of others",
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
<<<<<<< HEAD
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo3.jpg",
=======
>>>>>>> 161fe9288f68aaa23f19ca79192573b7ea93382a
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
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 11),
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
                                                          color: Colors.black,
                                                          width: 2)),
                                                  height: 30,
                                                  width: 31,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.red
                                                      ]),
                                                  border: Border.all(
                                                      color: Colors.white10,
                                                      width: 2),
                                                ),
                                                height: 35,
                                                width: 35,
                                                margin:
                                                EdgeInsets.only(left: 13),
                                              ),
                                              Container(
                                                margin:
                                                EdgeInsets.only(left: 11),
                                                child: Text(
                                                  "gamdiyo",
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
<<<<<<< HEAD
                                margin: EdgeInsets.only(left: 5, right: 5),
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
=======
>>>>>>> 161fe9288f68aaa23f19ca79192573b7ea93382a
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
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                setState(() {
                                                  isLike=!isLike;
                                                });
                                              },
                                              child: isLike == false ? Container(
                                                child: Icon(
                                                  Icons
                                                      .favorite_outline_rounded,
                                                  size: 29,
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 15),
                                              ) : Container(
                                                child: Icon(
                                                  Icons
                                                      .favorite,
                                                  size: 29,
                                                  color: Colors.red,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 15),
                                              ),
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
                                        onTap: (){
                                          setState(() {
                                            isSave=!isSave;
                                          });
                                        },
                                        child: isSave == false ? Container(
                                          child: Icon(
                                            Icons.bookmark_outline,
                                            size: 29,
                                            color: Colors.white,
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 15),
                                        ) : Container(
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 29,
                                            color: Colors.white,
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 15),
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
                                  margin: EdgeInsets.only(right: 293, top: 3),
                                  child: Text(
                                    "2 hours ago",
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 11),
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
          )),
    );
  }
}
