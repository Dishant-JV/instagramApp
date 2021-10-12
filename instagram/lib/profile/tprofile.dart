import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tprofile extends StatefulWidget {
  const Tprofile({Key? key}) : super(key: key);

  @override
  _TprofileState createState() => _TprofileState();
}

class _TprofileState extends State<Tprofile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
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
    );
  }
}
