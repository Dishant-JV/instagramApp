import 'dart:isolate';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class DownloadingScreen extends StatefulWidget {
  const DownloadingScreen({Key? key}) : super(key: key);

  @override
  _DownloadingScreenState createState() => _DownloadingScreenState();
}

class _DownloadingScreenState extends State<DownloadingScreen> {
  // final path="https://image.shutterstock.com/image-photo/macro-imagr-bee-beautiful-cosmos-260nw-1282844227.jpg";
  int progress = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          color: Colors.red,
          height: 500,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () async {
                final result =
                    await FilePicker.platform.pickFiles();
                if (result == null) {
                  print("failed");
                } else {
                  print("success");
                  await Share.shareFiles(["${result.paths}"], text: "photo");
                }
              },
              child: Container(
                child: Text("Share Image"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
