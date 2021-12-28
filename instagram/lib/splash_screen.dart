import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/demos/dialog_demo.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer ?timer;
  int seconds = 60;

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DialogDemo())));
   // timer= Timer.periodic(Duration(seconds: 1), (timer) {
   //    if(seconds>0){
   //      setState(() {
   //        seconds--;
   //      });
   //    }else{
   //      timer.cancel();
   //      Navigator.pushReplacement(
   //                  context, MaterialPageRoute(builder: (context) => Insta()));
   //    }
   //  });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(seconds.toString(),style: TextStyle(fontSize: 50,color: Colors.white),),
            Center(
                child: Image.asset(
              "assets/images/insta_text.png",
              color: Colors.grey,
              height: 100,
              width: 300,
            )),
            SizedBox(
              height: 25,
            ),
            CupertinoActivityIndicator(
              animating: true,
              radius: 50,
            ),
          ],
        ),
      ),
    );
  }
}