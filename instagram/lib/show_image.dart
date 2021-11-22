import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  final String img;
  const Images({Key? key,required this.img}) : super(key: key);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          body: Container(
        height: double.infinity,
        width: double.infinity,
            child: Image.asset(widget.img),
      )),
    );
  }
}
