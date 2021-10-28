import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile/login.dart';
import 'package:instagram/profile/signup.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width:200,
                    height: 70,
                    child: Image.asset("assets/images/insta_text.png",color: Colors.white,fit: BoxFit.fill,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:20,top: 12,bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/demo.JPG",
                                      ),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                ),
                                height: 40,
                                width: 40,
                                // margin: EdgeInsets.only(left: 10),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text("dishant_8171",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),)
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Container(
                            height: 30,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white,width: 1)
                            ),
                            alignment: Alignment.center,
                            child: Text("Log in",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          child: Icon(Icons.more_vert,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:20,top: 10,bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/demo3.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 40,
                                  width: 40,
                                  // margin: EdgeInsets.only(left: 10),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text("informerspro",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),)
                                ),
                              ],
                            )
                        ),
                        Container(
                          child: Container(
                            height: 30,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white,width: 1)
                            ),
                            alignment: Alignment.center,
                            child: Text("Log in",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          child: Icon(Icons.more_vert,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        width:196 ,
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey.withOpacity(0.2)),top: BorderSide(color: Colors.grey.withOpacity(0.2)))
                        ),
                        child: Text("Switch Accounts",style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w500),),
                        alignment: Alignment.center,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Container(
                        width:196 ,
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))
                        ),
                        child: Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w500),),
                        alignment: Alignment.center,
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
