import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
  backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:13,left: 20,right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            child: Text("dishant_7181",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 22),),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,size: 25,),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Icon(Icons.menu,color: Colors.white,size: 30,),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo2.JPG",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 90,
                      width: 90,
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
