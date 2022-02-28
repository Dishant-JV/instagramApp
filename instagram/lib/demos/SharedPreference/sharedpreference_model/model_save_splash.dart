import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:instagram/demos/SharedPreference/sharedpreference_model/model_save_home.dart';
import 'package:instagram/demos/SharedPreference/sharedpreference_model/model_save_home2.dart';
import 'package:instagram/demos/SharedPreference/sharedpreference_model/store_get_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModelSaveSplash extends StatefulWidget {
  const ModelSaveSplash({Key? key}) : super(key: key);

  @override
  _ModelSaveSplashState createState() => _ModelSaveSplashState();
}

class _ModelSaveSplashState extends State<ModelSaveSplash> {
  void check() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    logIn = preferences.getBool('isLogIn')!;
  }

  bool logIn=false;
  Timer? _timer;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    check();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _timer?.cancel();
      if (logIn == true) {
        Get.to(ModelSaveHome2());
      } else {
        Get.to(ModelSaveHome());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
