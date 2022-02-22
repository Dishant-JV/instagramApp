import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  final String? email;
  final String? pass;
  const SharedHome({Key? key, this.email, this.pass}) : super(key: key);

  @override
  _SharedHomeState createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  String getEmail="";
  String getPass="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
  }
  void remove()async {
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      pref.remove('email');
      pref.remove('pass');
    });
  }
  void load()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      pref.setString('email', widget.email.toString());
      pref.setString('pass', widget.pass.toString());
      getEmail=pref.getString('email')!;
      getPass=pref.getString('pass')!;
    });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(getEmail),
            Text(getPass),
            ElevatedButton(onPressed: (){
              remove();
            }, child: Text("LogOut"))
          ],
        ),
      ),
    );
  }

  
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
