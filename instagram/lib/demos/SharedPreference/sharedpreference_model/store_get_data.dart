import 'dart:convert';
import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

import 'model_save_sharedpreference.dart';

class StoreGetData {
  static void logIn(bool isLogIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isLogIn', isLogIn);
  }

  static void storeUserData(
      String image, String name, String email, String password) async {
    ModelSaveSharedpreference user1 = ModelSaveSharedpreference(
        photo: image, name: name, email: email, password: password);
    String user = jsonEncode(user1);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('userdata', user);
  }

  static Future<ModelSaveSharedpreference> getUserData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, dynamic> jsonData =
        jsonDecode(preferences.getString('userdata') ?? "");
    ModelSaveSharedpreference user =
        ModelSaveSharedpreference.fromJson(jsonData);
    return user;
  }
}
