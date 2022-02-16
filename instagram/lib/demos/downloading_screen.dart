import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:dio/dio.dart';
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
  double? progress;
  bool isDownload = false;
  final imgPath =
      "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg";
  var mmm;

  @override
  void initState() {
    super.initState();
  }

  Future<void> downloadingg() async {
    try {
      Dio dio = Dio();

      var mm =
          await getExternalStorageDirectories(type: StorageDirectory.downloads);

      print(mm);
      dio.download(imgPath, "$mm/minion.jpg", onReceiveProgress: (rec, total) {
        print("receive $rec total $total");
        setState(() {
          progress = ((rec / total * 100).toDouble());
          print(progress);
        });
      });
    } catch (e) {
      print(e);
    }
    setState(() {
      isDownload = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: isDownload
                ? Center(
                    child: Text(progress.toString()),
                  )
                : Center(
                    child: InkWell(
                        onTap: () {
                          isDownload = true;
                          downloadingg();
                        },
                        child: Text("Download")),
                  )));
  }
}
