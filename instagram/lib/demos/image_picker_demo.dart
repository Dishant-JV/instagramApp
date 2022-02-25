import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  String? image;
  ImagePicker pickImage = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            image != null && image!.isNotEmpty
                ? Image.file(
                    File(image ?? ""),
                  )
                : Image.asset("assets/images/demo4.jpg"),
            ElevatedButton(
                onPressed: () async {
                  final fileImage =
                      await pickImage.pickImage(source: ImageSource.camera,);
                  setState(() {

                    image = fileImage?.path;
                  });
                },
                child: Text("Change Image"))
          ],
        ),
      ),
    );
  }
}
