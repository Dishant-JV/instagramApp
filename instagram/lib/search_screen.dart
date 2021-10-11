import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 5),
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
              //Image.asset("assets/images/demo2.JPG")
              Row(
                children: [
                  Column(
                    children: [
                  Container(
                    child: Image.asset(
                      "assets/images/demo3.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                            left:
                                BorderSide(width: 2.5, color: Colors.black),
                            right: BorderSide(
                                width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                            width: 2.5, color: Colors.black),)),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/demo5.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),                    ],
                  ),
                  Column(
                    children: [
                  Container(
                    child: Image.asset(
                      "assets/images/demo3.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/demo4.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/demo.JPG",
                          fit: BoxFit.cover,
                        ),
                        height: 270,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 2.5, color: Colors.black),
                          right: BorderSide(
                              width: 2.5, color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(

                    child: Image.asset(
                      "assets/images/demo3.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          left:
                          BorderSide(width: 2.5, color: Colors.black),
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                  Container(

                    child: Image.asset(
                      "assets/images/demo3.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),

                  Container(
                    child: Image.asset(
                      "assets/images/demo3.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/demo5.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          left:
                          BorderSide(width: 2.5, color: Colors.black),
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                  
                  Container(
                    child: Image.asset(
                      "assets/images/demo3.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                  Container(

                    child: Image.asset(
                      "assets/images/demo4.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/demo5.jpg",
                      fit: BoxFit.cover,
                    ),
                    height: 270,
                    width: 260,
                    decoration: BoxDecoration(
                        border: Border(
                          left:
                          BorderSide(width: 2.5, color: Colors.black),
                          right: BorderSide(
                              width: 2.5, color: Colors.black),
                          bottom: BorderSide(
                              width: 2.5, color: Colors.black),)),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/demo2.JPG",
                          fit: BoxFit.cover,
                        ),
                        height: 135,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                  width: 2.5, color: Colors.black),
                              bottom: BorderSide(
                                  width: 2.5, color: Colors.black),)),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/demo4.jpg",
                          fit: BoxFit.cover,
                        ),
                        height: 135,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                  width: 2.5, color: Colors.black),
                              bottom: BorderSide(
                                  width: 2.5, color: Colors.black),)),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
