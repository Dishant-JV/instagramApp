import 'package:flutter/material.dart';

import '../profile_screen.dart';

class Close extends StatefulWidget {
  const Close({Key? key}) : super(key: key);

  @override
  _CloseState createState() => _CloseState();
}

class _CloseState extends State<Close> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          body: Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.pop(context,MaterialPageRoute(builder: (context) => Profile()));
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 30,left: 20),
                          child: Icon(Icons.arrow_back,color: Colors.white,size: 27,),
                        ),
                      ),
                      Text("Add Close Friends",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 80,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.15),
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("We don't send notification when you edit your close",style: TextStyle(color: Colors.grey.withOpacity(0.9)),),
                        Text("friend list. How it works",style: TextStyle(color: Colors.grey.withOpacity(0.9)),)
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 15),
                  width: double.infinity,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.withOpacity(0.3)),
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
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 13,left: 8),
                            child: Text("Suggestions",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo2.JPG",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "_.akshar.patel._",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "son of vaghasiya",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo3.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "miss_pinku-00",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "---------Don --------",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo5.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Piyush Vghasiya 2151",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Piyush",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo4.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Mr.smit sheta official ",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "papa's king",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo2.JPG",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "_.akshar.patel._",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "son of vaghasiya",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo5.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Piyush Vghasiya 2151",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Piyush",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo2.JPG",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "_.akshar.patel._",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "son of vaghasiya",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo3.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "miss_pinku-00",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "---------Don --------",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:20,top: 15),
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
                                                "assets/images/demo5.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                        height: 56,
                                        width: 56,
                                        // margin: EdgeInsets.only(left: 10),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Piyush Vghasiya 2151",
                                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                                              ),
                                              margin: EdgeInsets.only(right: 13),
                                            ),
                                            Container(
                                              child: Text(
                                                "Piyush",
                                                style: TextStyle(color: Colors.white54,fontSize: 15),
                                              ),
                                              margin: EdgeInsets.only(top:3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 30,
                                  width: 80,

                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15,bottom: 17),
                  height: 55,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                      BorderRadius.circular(10)),
                  child: Container(
                      child: Text(
                        "Create List",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ),

              ],
            ),
          ),
      ),
    );
  }
}
