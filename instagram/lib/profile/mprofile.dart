import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/show_profile_images.dart';

class Mprofile extends StatefulWidget {
  const Mprofile({Key? key}) : super(key: key);

  @override
  _MprofileState createState() => _MprofileState();
}

class _MprofileState extends State<Mprofile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:10),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileImages(
                        pImage: "assets/images/demo.JPG",
                      )));
                    });
                  },
                  child: Container(
                    child: Image.asset(
                      "assets/images/demo.JPG",
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
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileImages(
                        pImage: "assets/images/demo7.jpg",
                      )));
                    });
                  },
                  child: Container(

                    child: Image.asset(
                      "assets/images/demo7.jpg",
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
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                child: Image.asset(
                  "assets/images/demo4.jpg",
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
              ),
            ],
          ),
          Row(
            children: [
              Container(

                child: Image.asset(
                  "assets/images/demo7.jpg",
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
                  "assets/images/demo6.jpg",
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
              ),
            ],
          ),
          Row(
            children: [
              Container(

                child: Image.asset(
                  "assets/images/demo7.jpg",
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
                  "assets/images/demo6.jpg",
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
              ),
            ],
          ),
          Row(
            children: [
              Container(

                child: Image.asset(
                  "assets/images/demo7.jpg",
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
                  "assets/images/demo6.jpg",
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
              ),
            ],
          ),
          Row(
            children: [
              Container(

                child: Image.asset(
                  "assets/images/demo7.jpg",
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
                  "assets/images/demo6.jpg",
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

