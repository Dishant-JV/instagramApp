import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  final String ?name;
  final String ?password;
  const Show({Key? key,this.name,this.password}) : super(key: key);

  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  String names="";
  String password="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    names=widget.name ??"";
    password=widget.password??"";
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height:40,
            ),
            Row(
              children: [
                Text("Name  :"),
                Text(names),
              ],
            ),
            SizedBox(
              height:40,
            ),
            Row(
              children: [
                Text("Password  :"),
                Text(password)
              ],
            )
          ],
        ),
      ),
    );
  }
}
