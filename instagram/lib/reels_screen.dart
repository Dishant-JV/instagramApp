import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
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
                        child: Text("Reels",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 22),),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 27,),
                    )
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
