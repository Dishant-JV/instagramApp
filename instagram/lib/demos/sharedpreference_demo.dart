

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferenceDemo extends StatefulWidget {
  const SharedpreferenceDemo({Key? key}) : super(key: key);

  @override
  _SharedpreferenceDemoState createState() => _SharedpreferenceDemoState();
}

class _SharedpreferenceDemoState extends State<SharedpreferenceDemo> {
  //late SharedPreferences pref;
  int i=10;
  void loadcounter() async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      i=(pref.getInt('counter')?? 0);
    });
  }
  void show() async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      i=(pref.getInt('counter') ?? 0 + 1);
      pref.setInt('counter', i);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadcounter();
  }
  //TextEditingController mycontroller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child:Column(
              children: [
                Text('$i',style: TextStyle(
                  color: Colors.red,
                  fontSize: 20
                ),),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: (){
                    show();
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: Text("done",style: TextStyle(color: Colors.yellow),),
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    height: 20,
                    width: 40,
                    color: Colors.yellow,
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
  remove() async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.remove("counter");
  }
}
