import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/activity_screen.dart';
import 'package:instagram/profile/activity.dart';
import 'package:instagram/profile/close_friend.dart';
import 'package:instagram/profile/profile_archives.dart';
import 'package:instagram/profile/qrcode.dart';
import 'package:instagram/profile/saved.dart';
import 'package:instagram/profile/settings.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
      ),
      height: 350,
      width: double.infinity,
      padding: EdgeInsets.only(top:10 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.settings,color: Colors.white,size: 26,),
                  ),
                  Container(
                    child: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Archives()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.timelapse,color: Colors.white,size: 26,),
                  ),
                  Container(
                    child: Text("Archive",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Pactivity()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.access_time_rounded,color: Colors.white,size: 26,),
                  ),
                  Container(
                    child: Text("Your Activity",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Qrcode()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.qr_code,color: Colors.white,size: 30,),
                  ),
                  Container(
                    child: Text("QR Code",style: TextStyle(color: Colors.white,fontSize: 18),),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Saved()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.flare_sharp,color: Colors.white,size: 26,),
                  ),
                  Container(
                    child: Text("Saved",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Close()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.menu_open_outlined,color: Colors.white,size: 26,),
                  ),
                  Container(
                    child: Text("Close Friend",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Icon(Icons.language_rounded,color: Colors.white,size: 26,),
                  ),
                  Container(
                    child: Text("Covid - 19 Information",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
