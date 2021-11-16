import 'package:flutter/material.dart';

class Changeprofile extends StatefulWidget {
  const Changeprofile({Key? key}) : super(key: key);

  @override
  _ChangeprofileState createState() => _ChangeprofileState();
}

class _ChangeprofileState extends State<Changeprofile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.cancel_outlined,color: Colors.white,size: 32,),
                            margin: EdgeInsets.only(left: 10,right: 20),
                          ),
                          Container(
                            child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.check,color: Colors.blue,size: 32,),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 150,top: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
                      ),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
                height: 100,
                width: 100,
                // margin: EdgeInsets.only(left: 10),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
