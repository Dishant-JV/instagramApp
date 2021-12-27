
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
  int i=0;
  void loadcounter() async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      i=(pref.getInt('counter')?? 0);
    });
  }
  void show() async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      i=pref.getInt('counter') ?? 0;
      pref.setInt('counter', i+1);
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
                    padding: EdgeInsets.all(30),
                    child: Text("fas"),
                    color: Colors.red,
                  ),
                ),

                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: (){
                    remove();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 80,
                    color: Colors.yellow,
                    child: Text("remove"),
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
