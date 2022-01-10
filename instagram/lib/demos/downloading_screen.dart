import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadingScreen extends StatefulWidget {
  const DownloadingScreen({Key? key}) : super(key: key);

  @override
  _DownloadingScreenState createState() => _DownloadingScreenState();
}

class _DownloadingScreenState extends State<DownloadingScreen> {
  int progress=0;
  ReceivePort receivePort =ReceivePort();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void initState() {
    // IsolateNameServer.registerPortWithName(receivePort.sendPort, "downloading");
    receivePort.listen((message) {
      setState(() {
        progress=message;
      });
    });
    FlutterDownloader.registerCallback(downloads);
    super.initState();
  }
  static downloads(id, status, progress) {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(progress.toString()),
            Center(
              child: InkWell(
                onTap: () async {
                  final status = await Permission.storage.request();
                  final external = await getExternalStorageDirectory();
                  if (status.isGranted) {
                    final id = await FlutterDownloader.enqueue(
                        fileName: "videos",
                        showNotification: true,
                        openFileFromNotification: true,
                        url:
                        "https://www.bollywoodhungama.com/wp-content/uploads/2021/10/jannat2.jpg",
                        savedDir: external!.path);
                    print("donesss");
                  } else {
                    print("error in downloading");
                  }
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}