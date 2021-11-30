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
            ],
          ),
        ),
      ),
    );
  }
}
