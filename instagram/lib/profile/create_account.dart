import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAC extends StatefulWidget {
  const CreateAC({Key? key}) : super(key: key);

  @override
  _CreateACState createState() => _CreateACState();
}

class _CreateACState extends State<CreateAC> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 27),
                  child: Text("Choose Username",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 26),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13,bottom: 5),
                  child: Text("You can always change it later",style: TextStyle(color: Colors.grey.withOpacity(0.9)),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15),
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade600.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Container(child: Text("Username",style: TextStyle(color: Colors.grey),),margin: EdgeInsets.only(left: 15),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Container(child: Text("Next",style: TextStyle(color: Colors.grey),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
