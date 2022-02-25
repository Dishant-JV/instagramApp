import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImagePickerDemo1 extends StatefulWidget {
  const ImagePickerDemo1({Key? key}) : super(key: key);

  @override
  _ImagePickerDemo1State createState() => _ImagePickerDemo1State();
}

class _ImagePickerDemo1State extends State<ImagePickerDemo1> {
  setPhoto(String filePath) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('photo', filePath);
    image = pref.getString('photo');
    print(image);
  }

  getPhoto() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    image = pref.getString('photo');
  }

  String? image;
  ImagePicker pickImage = ImagePicker();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
                radius: 55,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(55),
                  child: Image.file(
                    File(
                      image ?? "",
                    ),
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ))
          ]),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 140,
                            width: double.infinity,
                            child: Container(
                              height: 140,
                              margin: EdgeInsets.only(
                                  left: 15, right: 15, bottom: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final fileImage =
                                          await pickImage.pickImage(
                                              source: ImageSource.gallery);
                                      setState(() {
                                        setPhoto(fileImage!.path);
                                        image = fileImage.path;
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'Photo Gallery',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey))),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final fileImage =
                                          await pickImage.pickImage(
                                              source: ImageSource.camera);
                                      setState(() {
                                        setPhoto(fileImage!.path);
                                        image = fileImage.path;
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'Camera',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(
                                left: 15, right: 15, bottom: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'Cancel',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          )
                        ],
                      );
                    });
              },
              child: Text(
                'Raj Mak',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(
            margin: EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'First Name        ',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text('Last Name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Raju        ',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text('Mak',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Email Address',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('rajmak5656@gmail.com',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Mobile Number',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('8511510103',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.4)))),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.4)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms Of Service',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.4)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'App Support',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 70),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black54)),
            child: Text(
              'Log Out',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
