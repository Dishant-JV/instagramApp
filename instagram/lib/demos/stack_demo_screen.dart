import 'package:flutter/material.dart';
import 'package:instagram/utils/size_utils.dart';

class StackDemoScreen extends StatefulWidget {
  const StackDemoScreen({Key? key}) : super(key: key);

  @override
  _StackDemoScreenState createState() => _StackDemoScreenState();
}

class _StackDemoScreenState extends State<StackDemoScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: height),
        child: Center(
          child: Stack(
            children: [
              Positioned.fill(child: Container()),
              Container(
                margin: EdgeInsets.only(left: 10),
                color: Colors.orange,
                height: 200,
                width: 120,
              ),
              Container(
                color: Colors.blueGrey,
                height: 100,
                width: 120,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                color: Colors.pink,
                height: 200,
                width: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
