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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned.fill(child: Container()),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.only(bottom: 50),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
              ),
              Align(alignment: Alignment.center,child: Text("height : ${SizeUtils.height(context, 0.65)} \nwidth : ${SizeUtils.width(context, 100)}",))
            ],
          ),
        ),
      ),
    );
  }
}
