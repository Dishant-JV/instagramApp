import 'package:flutter/material.dart';

class DrawerDemo3 extends StatefulWidget {
  const DrawerDemo3({Key? key}) : super(key: key);

  @override
  _DrawerDemo3State createState() => _DrawerDemo3State();
}

class _DrawerDemo3State extends State<DrawerDemo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HYYYY",style: TextStyle(fontFamily: 'RyeFonts'),),
      ),
    );
  }
}
