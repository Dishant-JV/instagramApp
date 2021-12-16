import 'package:flutter/material.dart';
import 'package:instagram/profile/create_account.dart';
import 'package:instagram/profile/logout.dart';
import 'package:instagram/profile/signup.dart';
import 'package:instagram/profile_screen.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      //   margin: EdgeInsets.only(
                      //       top: 35, left: 17, right: 17, bottom: 25),
                      //   width: double.infinity,
                      //   height: 33,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(7),
                      //       color: Colors.white12),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         child: Icon(
                      //           Icons.search,
                      //           color: Colors.white54,
                      //           size: 20,
                      //         ),
                      //         margin: EdgeInsets.only(left: 17),
                      //       ),
                      //       Container(
                      //         child: Text(
                      //           "Search",
                      //           style: TextStyle(
                      //               color: Colors.white54, fontSize: 17),
                      //         ),
                      //         margin: EdgeInsets.only(left: 17),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      Container(
                        height: 35,
                        margin: EdgeInsets.only(top: 35, left: 17, right: 17, bottom: 25),
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: Icon(Icons.search_sharp,color: Colors.white54,size: 20,),
                                hintText:"Search",
                                hintStyle: TextStyle(color: Colors.white54,fontSize: 13),
                                filled: true,
                                fillColor: Colors.grey.shade800.withOpacity(0.6),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                border: OutlineInputBorder(
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 6),
                            child:
                                Icon(Icons.person_rounded, color: Colors.white),
                          ),
                          Text(
                            "Follow and Invite Friends",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.notifications,
                                    color: Colors.white),
                              ),
                              Text(
                                "Notifications",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.lock, color: Colors.white),
                              ),
                              Text(
                                "Privacy",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child:
                                    Icon(Icons.security, color: Colors.white),
                              ),
                              Text(
                                "Security",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.playlist_add_sharp,
                                    color: Colors.white),
                              ),
                              Text(
                                "Ads",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.account_box,
                                    color: Colors.white),
                              ),
                              Text(
                                "Account",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.help, color: Colors.white),
                              ),
                              Text(
                                "Help",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.account_balance_outlined,
                                    color: Colors.white),
                              ),
                              Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 6),
                                child: Icon(Icons.theater_comedy,
                                    color: Colors.white),
                              ),
                              Text(
                                "Theme",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 45, left: 15),
                        child: Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Text(
                          "Accounts center",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Text(
                          "Control settings for connected experience across",
                          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 15),
                        child: Text(
                          "Instagram, the Facebook app and Messenger,including",
                          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 15),
                        child: Text(
                          "story and post sharing and logging in.",
                          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 15),
                        child: Text(
                          "Logins",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 190,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 20),
                                  color: Colors.black,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          "Add Account",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Logout()));
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(top: 20),
                                          height: 50,
                                          width: 350,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Container(
                                              child: Text(
                                            "Log in into existing account",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CreateAC()));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                top: 18, bottom: 18),
                                            child: Text(
                                              "Create New Account",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            )),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30, left: 15),
                          child: Text(
                            "Add Account",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showDialog(context: context, builder:(cc)=>AlertDialog(
                            backgroundColor: Colors.grey.shade800,
                            content: Container(
                                height: 25,
                                alignment: Alignment.center,
                                width: double.infinity,child: Text("Log out of Instagram",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),)),
                            actions: [
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Logout()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: double.infinity,
                                  child: Text("Log Out",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Settings()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: double.infinity,
                                  child: Text("Cancel",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
                                ),
                              )
                            ],
                          )
                          );
                        },
                        child: Container(

                          margin:
                              EdgeInsets.only(top: 30, left: 15, bottom: 15),
                          child: Text(
                            "Log Out",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
