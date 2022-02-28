import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/demos/SharedPreference/sharedpreference_model/store_get_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model_save_sharedpreference.dart';

class ModelSaveHome2 extends StatefulWidget {
  const ModelSaveHome2({Key? key}) : super(key: key);

  @override
  _ModelSaveHome2State createState() => _ModelSaveHome2State();
}

class _ModelSaveHome2State extends State<ModelSaveHome2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  void getUserData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, dynamic> jsonData =
        jsonDecode(preferences.getString('userdata')??"");
    var user = ModelSaveSharedpreference.fromJson(jsonData);
    if(jsonData.isNotEmpty){
      print("username${user.name}");
    }else{
      print("error");
    }
    print("name${user.name}");
    // image=user.photo;
    // names=user.name;
    // emails=user.email;
    // passs=user.password;
  }

  String? image;
  String? names;
  String? emails;
  String? passs;
  ImagePicker pickImage = ImagePicker();
  final demos = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passcontroller = new TextEditingController();
  FocusNode name = FocusNode();
  FocusNode email = FocusNode();
  FocusNode pass = FocusNode();
  bool ispassvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,);
    // return SafeArea(
    //   child: Scaffold(
    //     resizeToAvoidBottomInset: false,
    //     body: Column(
    //       children: [
    //         SizedBox(
    //           height: 100,
    //         ),
    //         InkWell(
    //           onTap: () {
    //             showModalBottomSheet(
    //                 backgroundColor: Colors.transparent,
    //                 context: context,
    //                 builder: (BuildContext context) {
    //                   return Column(
    //                     mainAxisAlignment: MainAxisAlignment.end,
    //                     children: [
    //                       Container(
    //                         height: 140,
    //                         width: double.infinity,
    //                         child: Container(
    //                           height: 140,
    //                           margin: EdgeInsets.only(
    //                               left: 15, right: 15, bottom: 20),
    //                           decoration: BoxDecoration(
    //                               color: Colors.white,
    //                               borderRadius:
    //                                   BorderRadius.all(Radius.circular(20))),
    //                           child: Column(
    //                             children: [
    //                               SizedBox(
    //                                 height: 20,
    //                               ),
    //                               InkWell(
    //                                 onTap: () async {
    //                                   final fileImage =
    //                                       await pickImage.pickImage(
    //                                           source: ImageSource.gallery);
    //                                   setState(() {
    //                                     image = fileImage?.path;
    //                                   });
    //                                   Navigator.of(context).pop();
    //                                 },
    //                                 child: Text(
    //                                   'Photo Gallery',
    //                                   style: TextStyle(
    //                                       color: Colors.blue, fontSize: 20),
    //                                 ),
    //                               ),
    //                               Container(
    //                                 margin: EdgeInsets.only(top: 20),
    //                                 decoration: BoxDecoration(
    //                                     border: Border(
    //                                         bottom: BorderSide(
    //                                             color: Colors.grey))),
    //                               ),
    //                               SizedBox(
    //                                 height: 20,
    //                               ),
    //                               InkWell(
    //                                 onTap: () async {
    //                                   final fileImage =
    //                                       await pickImage.pickImage(
    //                                           source: ImageSource.camera);
    //                                   setState(() {
    //                                     image = fileImage?.path;
    //                                   });
    //                                   Navigator.of(context).pop();
    //                                 },
    //                                 child: Text(
    //                                   'Camera',
    //                                   style: TextStyle(
    //                                       color: Colors.blue, fontSize: 20),
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 60,
    //                         width: double.infinity,
    //                         margin: EdgeInsets.only(
    //                             left: 15, right: 15, bottom: 20),
    //                         decoration: BoxDecoration(
    //                             color: Colors.white,
    //                             borderRadius:
    //                                 BorderRadius.all(Radius.circular(20))),
    //                         child: Text(
    //                           'Cancel',
    //                           style:
    //                               TextStyle(color: Colors.blue, fontSize: 20),
    //                         ),
    //                       )
    //                     ],
    //                   );
    //                 });
    //           },
    //           child: CircleAvatar(
    //               radius: 55,
    //               child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(55),
    //                 child: Image.file(
    //                   File(
    //                     image ?? "",
    //                   ),
    //                   width: 120,
    //                   fit: BoxFit.cover,
    //                 ),
    //               )),
    //         ),
    //         Container(
    //             child: Form(
    //           key: demos,
    //           child: Container(
    //             child: Column(
    //               mainAxisSize: MainAxisSize.max,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: EdgeInsets.all(20),
    //                   child: TextFormField(
    //                     initialValue: names,
    //                     controller: namecontroller,
    //                     focusNode: name,
    //                     validator: (value) {
    //                       if (value!.isEmpty) {
    //                         return "plzz enter name";
    //                       }
    //                     },
    //                     textInputAction: TextInputAction.go,
    //                     onEditingComplete: () {
    //                       setState(() {
    //                         FocusScope.of(context).requestFocus(email);
    //                       });
    //                     },
    //                     keyboardType: TextInputType.text,
    //                     decoration: InputDecoration(
    //                         labelText: "Name",
    //                         labelStyle: TextStyle(color: Colors.grey),
    //                         isDense: true,
    //                         enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(20),
    //                             borderSide: BorderSide(color: Colors.blueGrey)),
    //                         border: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(20),
    //                         )),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.all(20),
    //                   child: TextFormField(
    //                     initialValue: emails,
    //                     autovalidateMode: AutovalidateMode.onUserInteraction,
    //                     controller: emailcontroller,
    //                     focusNode: email,
    //                     validator: (value) {
    //                       bool emailValid = RegExp(
    //                               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //                           .hasMatch(value ?? "");
    //                       if (!emailValid) {
    //                         return "plzz enter valid email";
    //                       }
    //                     },
    //                     textInputAction: TextInputAction.go,
    //                     onEditingComplete: () {
    //                       setState(() {
    //                         FocusScope.of(context).requestFocus(pass);
    //                       });
    //                     },
    //                     keyboardType: TextInputType.emailAddress,
    //                     decoration: InputDecoration(
    //                         labelText: "Email",
    //                         labelStyle: TextStyle(color: Colors.grey),
    //                         isDense: true,
    //                         enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(20),
    //                             borderSide: BorderSide(color: Colors.blueGrey)),
    //                         border: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(20),
    //                         )),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.all(20),
    //                   child: TextFormField(
    //                     initialValue: passs,
    //                     controller: passcontroller,
    //                     autovalidateMode: AutovalidateMode.onUserInteraction,
    //                     validator: (value) {
    //                       bool passtrue = RegExp(
    //                               r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
    //                           .hasMatch(value ?? "");
    //                       if (value!.length < 8) {
    //                         return "length must be at least 8 character";
    //                       } else if (!passtrue) {
    //                         return "characte,word,num required";
    //                       }
    //                     },
    //                     focusNode: pass,
    //                     obscureText: ispassvisible == true ? false : true,
    //                     decoration: InputDecoration(
    //                         suffixIcon: IconButton(
    //                           onPressed: () {
    //                             setState(() {
    //                               ispassvisible = !ispassvisible;
    //                             });
    //                           },
    //                           icon: ispassvisible
    //                               ? Icon(
    //                                   Icons.visibility,
    //                                   color: Colors.grey,
    //                                 )
    //                               : Icon(
    //                                   Icons.visibility_off,
    //                                   color: Colors.grey,
    //                                 ),
    //                         ),
    //                         labelText: "Password",
    //                         labelStyle: TextStyle(color: Colors.grey),
    //                         isDense: true,
    //                         enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(20),
    //                             borderSide: BorderSide(color: Colors.blueGrey)),
    //                         border: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(20),
    //                         )),
    //                   ),
    //                 ),
    //                 Container(
    //                   width: 80,
    //                   child: ElevatedButton(
    //                     onPressed: () {
    //                       if (demos.currentState!.validate()) {
    //                         FocusScope.of(context).unfocus();
    //                       }
    //                       StoreGetData.storeUserData(
    //                           image!,
    //                           namecontroller.text,
    //                           emailcontroller.text,
    //                           passcontroller.text);
    //                       StoreGetData.logIn(true);
    //                     },
    //                     child: Text("Update"),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         )),
    //       ],
    //     ),
    //   ),
    // );
  }
}
