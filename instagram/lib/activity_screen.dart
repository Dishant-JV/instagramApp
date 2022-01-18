import 'package:flutter/material.dart';
import 'package:instagram/models/insta_activity.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<TodayPostActivity> tpost = [
    TodayPostActivity(
        fromName: "||_.mr.hemil_.||", toName: "#incredible...", day: 5),
    TodayPostActivity(fromName: "sahaj_123", toName: "#raj_mak87", day: 6)
  ];
  List<ActivityPost> wpost = [
    ActivityPost(name: "Raj._Mak9090", img: "assets/images/demo3.jpg"),
    ActivityPost(name: "dishant_5656", img: "assets/images/demo4.jpg"),
    ActivityPost(name: "miss_pinku_976", img: "assets/images/demo5.jpg"),
    ActivityPost(name: "Kanjii____12", img: "assets/images/demo6.jpg"),
    ActivityPost(name: "Mother care 0123", img: "assets/images/demo7.jpg"),
    ActivityPost(name: "Mother care 0123", img: "assets/images/demo7.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          "Activity",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo4.jpg",
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                              ),
                              height: 47,
                              width: 47,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Follow Requests",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text(
                                      "Approve or ignore requests",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: double.infinity,
                        child: Text(
                          "Today",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: tpost.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/demo6.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle,
                                          ),
                                          height: 47,
                                          width: 47,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                              RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text: tpost[index].fromName,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.white,
                                                        fontSize: 15)),
                                                TextSpan(
                                                    text: " commented: ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15)),
                                                TextSpan(
                                                    text: tpost[index].toName,
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        fontSize: 15)),
                                              ])),
                                              Container(
                                                margin: EdgeInsets.only(top: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .local_fire_department_rounded,
                                                      color: Colors.orange,
                                                      size: 17,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .local_fire_department_rounded,
                                                      color: Colors.orange,
                                                      size: 17,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .local_fire_department_rounded,
                                                      color: Colors.orange,
                                                      size: 17,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .local_fire_department_rounded,
                                                      color: Colors.orange,
                                                      size: 17,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      tpost[index]
                                                          .day
                                                          .toString(),
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white54),
                                                    ),
                                                    Text(
                                                      "d",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white54),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 65, top: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(right: 21),
                                            child: Icon(
                                              Icons.favorite_outline_rounded,
                                              color: Colors.white54,
                                              size: 15,
                                            )),
                                        Text(
                                          "Reply",
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "This week",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ),
                      ListView.builder(
                        physics:  NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: wpost.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            wpost[index].img.toString(),
                                          ),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 47,
                                    width: 47,
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 17),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                          RichText(
                                              text: TextSpan(children: [
                                            TextSpan(
                                                text: wpost[index].name.toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                    fontSize: 15)),
                                          ])),
                                          Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "requested to follow",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 28,
                                    width: 73,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Confirm",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.blueAccent),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    height: 28,
                                    width: 73,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Delete",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: Colors.white)),
                                  )
                                ],
                              ),
                            );
                          }),
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
