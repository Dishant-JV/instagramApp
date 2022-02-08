
import 'dart:isolate';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
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
  ReceivePort receivePort = ReceivePort();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void initState() {
    IsolateNameServer.registerPortWithName(receivePort.sendPort, "downloading");
    receivePort.listen((message) {
      setState(() {
        progress = message;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(color: Colors.red,height: 500,),
        body: Column(
          children: [
            Text(progress.toString()),
            // InkWell(
            //   onTap: () async {
            //     final status = await Permission.storage.request();
            //     final external = await getExternalStorageDirectory();
            //     if (status.isGranted) {
            //       await FlutterDownloader.enqueue(
            //           fileName: "flower",
            //           showNotification: true,
            //           openFileFromNotification: true,
            //           url:
            //               "https://image.shutterstock.com/image-photo/macro-imagr-bee-beautiful-cosmos-260nw-1282844221.jpg",
            //           savedDir: external!.path);
            //     } else {
            //       print("error in downloading");
            //     }
            //   },
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.red,
            //   ),
            // ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () async {
                FilePickerResult? result=await FilePicker.platform.pickFiles();
                Share.shareFiles(["${result?.files.single.path}"]);
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
