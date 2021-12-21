import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({Key? key}) : super(key: key);

  @override
  _QrcodeState createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
   String? imageFile;
   final picker = ImagePicker();

  _openCamera(BuildContext context) async {
    var picture = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile=picture?.path;
    });
    // Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children:[
              imageWidget(),
              InkWell(
                  onTap: (){
                    _openCamera(context);
                  },
                  child: Text("Open camera")),
            ],
          )
        ),
      ),
    );

  }
  Widget imageWidget(){
    return imageFile!=null?Container(
        width: 200,height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
            child: Image.file(File(imageFile??""),fit: BoxFit.cover,)):Text("no image selected");
    // if(imagefile == null){
    //   return Text("no image selected");
    // }
    // else{
    //   Image.file(imagefile,width: 200,height: 300,);
    // }
  }

}


