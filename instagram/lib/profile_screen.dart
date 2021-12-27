import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile/change_profile.dart';
import 'package:instagram/profile/mprofile.dart';
import 'package:instagram/profile/profile_followers.dart';
import 'package:instagram/profile/setting.dart';
import 'package:instagram/profile/tprofile.dart';
import 'package:instagram/show_image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String ?profileImage;
  final itemKey = GlobalKey();

  Future scrollToItem() async {
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(context,
        alignment: 0, duration: Duration(seconds: 1));
  }
    loadImage()async{
      SharedPreferences pref = await SharedPreferences.getInstance();
      setState(() {
        profileImage=pref.getString('imagePath');
      });
    }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadImage();
  }

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 13, left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade900,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15))),
                                      height: 180,
                                      width: double.infinity,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 25, left: 20, right: 20),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                                    image:
                                                                        NetworkImage(
                                                                      "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096.",
                                                                    ),
                                                                    fit: BoxFit
                                                                        .cover),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          height: 55,
                                                          width: 55,
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                            "dishant_8171",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 15.5),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 25,
                                                      width: 25,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue),
                                                      child: Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.black,
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20),
                                                child: Row(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 55,
                                                          width: 55,
                                                          decoration: BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5))),
                                                          child: Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                            size: 45,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 15),
                                                      child: Text(
                                                        "Add Account",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 15.5),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "dishant_7181",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.arrow_drop_down_sharp,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  child: Setting(),
                                );
                              });
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //       image: NetworkImage(
                              //         "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096.",
                              //       ),
                              //       fit: BoxFit.cover),
                              //   shape: BoxShape.circle,
                              // ),
                              height: 85,
                              width: 85,
                              child: CircleAvatar(
                                backgroundImage: FileImage(File(profileImage ?? "")),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                scrollToItem();
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "14",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        "Posts",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Followers(index: 0)));
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "512",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        "Followers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Followers(
                                              index: 1,
                                            )));
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "412",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        "Following",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 15),
                        width: double.infinity,
                        child: Text(
                          "||... Dishant Vaghasiya ...||",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 5),
                        width: double.infinity,
                        child: Text(
                          "Truth is Debit Card",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 3),
                        width: double.infinity,
                        child: Text(
                          "Pay First , Enjoy Later....",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 3),
                        width: double.infinity,
                        child: Text(
                          "Lie is Credit Card",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 3),
                        width: double.infinity,
                        child: Text(
                          "Enjoy First Pay Later....",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 13),
                        child: Row(
                          children: [
                            InkWell(
                              child: Container(
                                  height: 31,
                                  width: 312,
                                  // color: Colors.pink,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(4))),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Changeprofile()));
                              },
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 7, right: 20),
                              height: 31,
                              width: 33,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Images(
                                                      img:
                                                          "assets/images/demo3.jpg",
                                                      nimg: "",
                                                    )));
                                      },
                                      child: Container(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/demo3.jpg",
                                                  ),
                                                  fit: BoxFit.cover),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3)),
                                          height: 60,
                                          width: 60,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        height: 65,
                                        width: 65,
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 8, left: 5),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.blue,
                                              size: 16,
                                            ),
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.blue,
                                              size: 16,
                                            )
                                          ],
                                        )),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                margin: EdgeInsets.only(left: 5, right: 5),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Images(
                                                img: "assets/images/demo4.jpg",
                                                nimg: "",
                                              )));
                                },
                                child: Container(
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
                                                  color: Colors.black,
                                                  width: 3)),
                                          height: 60,
                                          width: 60,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        height: 65,
                                        width: 65,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        child: Text(
                                          "Briti ce",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                  margin: EdgeInsets.only(left: 5, right: 5),
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
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "Sweetie",
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
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "Goaaaa",
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
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "Gir..",
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
                                                  "assets/images/demo.JPG",
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
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "Gamde",
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
                        color: Colors.black,
                      ),
                      Container(
                        key: itemKey,
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    currentindex = 0;
                                  });
                                },
                                child: currentindex == 0
                                    ? Icon(
                                        Icons.pages_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                    : Icon(
                                        Icons.pages_outlined,
                                        color: Colors.grey,
                                        size: 30,
                                      )),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    currentindex = 1;
                                  });
                                },
                                child: currentindex == 1
                                    ? Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                    : Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                        size: 30,
                                      ))
                          ],
                        ),
                      ),
                      currentindex == 0 ? Mprofile() : Tprofile()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
