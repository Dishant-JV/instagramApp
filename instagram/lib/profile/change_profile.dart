import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_screen.dart';
import '../main.dart';

class Changeprofile extends StatefulWidget {
  //late final String ?ids;
  const Changeprofile({Key? key}) : super(key: key);

  @override
  _ChangeprofileState createState() => _ChangeprofileState();
}

class _ChangeprofileState extends State<Changeprofile> {
  UpdatePhoto updatePhoto = Get.put(UpdatePhoto());
  final pickers = ImagePicker();

  // void saveImage(path) async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   setState(() {
  //     pref.setString('imagePath',path);
  //   });
  // }
  // void loadImage()async{
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   setState(() {
  //     globals.imggs=pref.getString('imagePath');
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadImage();
  }

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
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context, 'dishant');
                            },
                            child: Container(
                              child: Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                                size: 32,
                              ),
                              margin: EdgeInsets.only(left: 15, right: 25),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.blue,
                          size: 34,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 150, top: 20),
                  height: 95,
                  width: 95,
                  child: GetBuilder<UpdatePhoto>(
                    builder: (e){
                      return CircleAvatar(
                          backgroundImage: FileImage(
                              File(e.photo.value)));
                    },
                  ),
              ),
              InkWell(
                onTap: () {
                  _openCamera(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 115, top: 15),
                  child: Text(
                    "Change Profile Photo",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 13),
                child: Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 12.5),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 35,
                width: double.infinity,
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Dishant Vaghasiya",
                      style: TextStyle(color: Colors.white, fontSize: 16.5),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Username",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 12.5),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 35,
                width: double.infinity,
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "dishant_8171",
                      style: TextStyle(color: Colors.white, fontSize: 16.5),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Website",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 12.5),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 35,
                width: double.infinity,
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "informerspro.com",
                      style: TextStyle(color: Colors.white, fontSize: 16.5),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 13),
                child: Text(
                  "Bio",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 12.5),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 35,
                width: double.infinity,
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Text(
                          "Only those who care about you , can hear you when you are quiet",
                          style: TextStyle(color: Colors.white, fontSize: 16.5),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey.withOpacity(0.5), width: 0),
                        bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.5), width: 0))),
                alignment: Alignment.centerLeft,
                height: 45,
                width: double.infinity,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Switch to Professional Account",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey.withOpacity(0.5), width: 0),
                        bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.5), width: 0))),
                alignment: Alignment.centerLeft,
                height: 45,
                width: double.infinity,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Personal information setting",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  _openCamera(BuildContext context) async {
    var picture = await pickers.pickImage(source: ImageSource.gallery);
    updatePhoto.photo.value = picture!.path;
  }
}

class UpdatePhoto extends GetxController {
  final photo = ''.obs;
}
