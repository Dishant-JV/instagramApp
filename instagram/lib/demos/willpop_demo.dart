
import 'package:flutter/material.dart';
import 'package:instagram/home_screen.dart';

import '../main.dart';

class WillPopDemo extends StatefulWidget {
  const WillPopDemo({Key? key}) : super(key: key);

  @override
  _WillPopDemoState createState() => _WillPopDemoState();
}

class _WillPopDemoState extends State<WillPopDemo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:onWillPop,
      child: Scaffold(
        body: Center(
          child: Text("Dishant"),
        ),
      ),
    );
  }
  Future<bool> onWillPop() async{
    final dialog=  await showDialog(context: context, builder: (context)=>
        AlertDialog(
         title: Text("Are you sure"),
         actions: [
           ElevatedButton(onPressed: (){
             Navigator.of(context).pop(true);
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
           }, child: Text("yes")),
           ElevatedButton(onPressed: (){
             Navigator.of(context).pop(false);
           }, child: Text("no"))
         ],
        )
    );
    return dialog ;
  }
}
