import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:instagram/demos/SharedPreference/shared_login.dart';
import 'package:instagram/demos/SharedPreference/sharedhome.dart';
import 'package:instagram/demos/sharedpreference_demo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpalshSharedPreference extends StatefulWidget {
  const SpalshSharedPreference({Key? key}) : super(key: key);

  @override
  _SpalshSharedPreferenceState createState() => _SpalshSharedPreferenceState();
}

class _SpalshSharedPreferenceState extends State<SpalshSharedPreference> {
  void check() async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    setState(() {
      LOgIN=pref.getBool('isLogin');
    });
  }
  bool? LOgIN;
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
    _timer=Timer.periodic(Duration(seconds: 3), (timer) {
      _timer?.cancel();
      if(LOgIN==true){
        Get.to(SharedHome());
      }
      else{
        Get.to(SharedPreferenceLogIn());
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
            SizedBox(height: 50,),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }


}

