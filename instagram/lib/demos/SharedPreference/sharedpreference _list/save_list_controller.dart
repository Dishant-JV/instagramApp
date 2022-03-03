import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// class UserModel {
//   List<UserList>? userList;
//
//   UserModel({this.userList});
//
//   UserModel.fromJson(Map<String, dynamic> json) {
//     if (json['userList'] != null) {
//       userList = <UserList>[];
//       json['userList'].forEach((v) {
//         userList!.add(new UserList.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.userList != null) {
//       data['userList'] = this.userList!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class UserList {
//   int? id;
//   String? name;
//
//   UserList({this.id, this.name});
//
//   UserList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }
class SaveListController {
  int? id;
  String? name;

  SaveListController({this.id, this.name});

  SaveListController.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  static storeData(List<SaveListController> userList) async {
    print("before");
    SharedPreferences preferences= await SharedPreferences.getInstance();
    String lst = jsonEncode(
        userList.map((e) => e.toJson()));
    preferences.setString('userdata', lst);
    // List<String> listOf = userList.map((e) => jsonEncode(e.toJson())).toList();
    // Map<String,dynamic> map={};
    // map["userList"]=userList;
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // preferences.setString('userdata', jsonEncode(map));
    // print("after");
  }

  static getData() async {
    print("S");
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var listt=jsonDecode(preferences.getString('userdata')??"");
    var data=listt.map((e) => SaveListController.fromJson(e));
    print(data.map((e) => e.name));
    // String lst =preferences.getString("userdata")??"";
    // var jsons =jsonDecode(lst);
    // print(json.encode(jsons));
    // List<Map<String,dynamic>> map = json;
    // print(map);
    // List<SaveListController> data=jsonData.map((e) => SaveListController.fromJson(e)).toList();



   }
}
