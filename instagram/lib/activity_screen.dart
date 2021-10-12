import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
                margin: EdgeInsets.only(top:20,bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Activity",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 22),),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
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
                                  Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                  Container(
                                    margin: EdgeInsets.only(top:2),
                                    child: Text("Approve or ignore requests",style: TextStyle(color: Colors.white54,fontSize: 15),),
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
                        child: Text("Today",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 17),),
                      ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                  RichText(text:
                                  TextSpan(
                                      children: [
                                        TextSpan(
                                            text:"||_mr.hemil_||",
                                            style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: " commented: ",
                                            style: TextStyle(color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: "#incredible..",
                                            style: TextStyle(color:Colors.white70,fontSize: 15)
                                        ),
                                      ]
                                  )
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top:5),
                                    child: Row(
                                      children: [
                                        Icon(Icons.local_fire_department_rounded,color: Colors.orange,size: 17,),
                                        Icon(Icons.local_fire_department_rounded,color: Colors.orange,size: 17,),
                                        Icon(Icons.local_fire_department_rounded,color: Colors.orange,size: 17,),
                                        Icon(Icons.local_fire_department_rounded,color: Colors.orange,size: 17,),
                                        Text("  1d",style: TextStyle(color: Colors.white54),)
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
                        margin: EdgeInsets.only(left: 65,top: 7),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 21),
                                child: Icon(Icons.favorite_outline_rounded,color: Colors.white54,size: 15,)),
                            Text("Reply",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w500,fontSize: 13),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:30),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo7.jpg",
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
                                  //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                  RichText(text:
                                  TextSpan(
                                      children: [
                                        TextSpan(
                                            text:"sunny_ahir",
                                            style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: " and",
                                            style: TextStyle(color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: " mayank_bhuva_7180",
                                            style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: " liked",
                                            style: TextStyle(color: Colors.white,fontSize: 15)
                                        ),
                                      ]
                                  )
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top:2),
                                    child: Row(
                                      children: [
                                        Text("your live video. ",style: TextStyle(color: Colors.white),),
                                        Text("  1d",style: TextStyle(color: Colors.white54),)
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
                        margin: EdgeInsets.only(bottom: 20,top: 20),
                        width: double.infinity,
                        child: Text("This week",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 17),),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo5.jpg",
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
                                  //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                  RichText(text:
                                  TextSpan(
                                      children: [
                                        TextSpan(
                                            text:"sunny_ahir , piu4514 ",
                                            style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: " and",
                                            style: TextStyle(color: Colors.white,fontSize: 15)
                                        ),
                                        TextSpan(
                                            text: " 18 others",
                                            style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                        ),
                                      ]
                                  )
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top:2),
                                    child: Row(
                                      children: [
                                        Text("started following you. ",style: TextStyle(color: Colors.white),),
                                        Text("  2d",style: TextStyle(color: Colors.white54),)
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
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo3.jpg",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                    RichText(text:
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text:"sugarfix_rutali,",
                                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                          ),
                                          TextSpan(
                                              text: " who you might",
                                              style: TextStyle(color: Colors.white,fontSize: 15)
                                          ),

                                        ]
                                    )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2),
                                      child: Row(
                                        children: [
                                          Text("know is on instagram. ",style: TextStyle(color: Colors.white),),
                                          Text("  2d",style: TextStyle(color: Colors.white54),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 28,
                              width: 65,

                              alignment: Alignment.center,
                              child: Text("Follow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
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
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                    RichText(text:
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text:"ps_213",
                                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                          ),
                                        ]
                                    )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2),
                                      child: Row(
                                        children: [
                                          Text("requested to follow",style: TextStyle(color: Colors.white),),
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
                              child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 28,
                              width: 73,

                              alignment: Alignment.center,
                              child: Text("Delete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.white)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo2.JPG",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                    RichText(text:
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text:"Raj_._Mak!!",
                                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                          ),
                                        ]
                                    )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2),
                                      child: Row(
                                        children: [
                                          Text("requested to follow",style: TextStyle(color: Colors.white),),
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
                              child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 28,
                              width: 73,

                              alignment: Alignment.center,
                              child: Text("Delete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.white)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo5.jpg",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                    RichText(text:
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text:"||_nilofar_multani_||",
                                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                          ),
                                        ]
                                    )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2),
                                      child: Row(
                                        children: [
                                          Text("requested to follow",style: TextStyle(color: Colors.white),),
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
                              child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 28,
                              width: 73,

                              alignment: Alignment.center,
                              child: Text("Delete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.white)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/demo7.jpg",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),
                                    RichText(text:
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text:"pagal_gujju_tm",
                                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15)
                                          ),
                                        ]
                                    )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:2),
                                      child: Row(
                                        children: [
                                          Text("requested to follow",style: TextStyle(color: Colors.white),),
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
                              child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 28,
                              width: 73,

                              alignment: Alignment.center,
                              child: Text("Delete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.white)
                              ),
                            )
                          ],
                        ),
                      ),
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
