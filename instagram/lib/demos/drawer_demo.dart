import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
         // appBar: AppBar(title: Text("hello")),
        endDrawer: Drawer(
          child: Container(
            color: Colors.yellow.shade100,
            // width: 200,
          ),
        ),
        body: Center(
          child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: Text("OPEN")),
        ),
      ),
    );
  }
}
