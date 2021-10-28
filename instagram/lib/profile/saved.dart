import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile_screen.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.pop(context,MaterialPageRoute(builder: (context) => Profile()));
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 25,left: 15),
                                child: Icon(Icons.arrow_back,color: Colors.white,size: 27,),
                              ),
                            ),
                            Text("Saved",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(Icons.add,color: Colors.white,size: 27,),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height:166,
                          width: 166,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 83,
                                      width: 83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
                                        image: new DecorationImage(image: AssetImage("assets/images/demo5.jpg"),fit:BoxFit.cover)
                                      ),
                                    ),
                                    Container(
                                      height: 83,
                                      width: 83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                                          image: new DecorationImage(image: AssetImage("assets/images/demo4.jpg"),fit:BoxFit.cover)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 83,
                                      width: 83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
                                          image: new DecorationImage(image: AssetImage("assets/images/demo3.jpg"),fit:BoxFit.cover)
                                      ),
                                    ),
                                    Container(
                                      height: 83,
                                      width: 83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(8)),
                                          image: new DecorationImage(image: AssetImage("assets/images/demo7.jpg"),fit:BoxFit.cover),

                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child: Text("All Posts",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height:166,
                          width: 166,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 83,
                                    width: 83,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
                                        image: new DecorationImage(image: AssetImage("assets/images/demo2.JPG"),fit:BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 83,
                                    width: 83,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                                        image: new DecorationImage(image: AssetImage("assets/images/demo7.jpg"),fit:BoxFit.cover)
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 83,
                                    width: 83,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
                                        image: new DecorationImage(image: AssetImage("assets/images/demo3.jpg"),fit:BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    height: 83,
                                    width: 83,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(8)),
                                      image: new DecorationImage(image: AssetImage("assets/images/demo4.jpg"),fit:BoxFit.cover),

                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child: Text("Audio",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ],
                    )
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

