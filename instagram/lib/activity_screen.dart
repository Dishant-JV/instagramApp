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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:15,left: 20,right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Activity",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                      ),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
