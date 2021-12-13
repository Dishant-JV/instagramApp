import 'dart:math';

import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  const RadioButtonDemo({Key? key}) : super(key: key);

  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  String gender = "male";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Radio(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text("Male"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text("female"),
                ],
              ),
             Row(
               children: [
                  Radio(
                    groupValue: gender,
                    value: "others",
                    onChanged: (value){
                      setState(() {
                        gender=value as String;
                        print(gender);
                      });
                    },
                  ),
                 Text("others")
               ],
             ),
              InkWell(
                onTap: (){
                  print("click : $gender");
                },
                child: Container(
                  color: Colors.pink,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Click",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Stack(
                children: [

                  Transform.rotate(
                    angle:342*pi/360,
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 8* pi /180,
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Transform(
                transform: Matrix4.skewY(0.3)..rotateZ(pi/12.0),
                child: Container(
                  height:50,
                  width: 50,
                  color: Colors.grey,
                  child: Icon(Icons.menu),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
