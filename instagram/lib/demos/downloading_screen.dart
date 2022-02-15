
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
  bool isOpen=false;
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
      var paths = await getExternalStorageDirectory();

      print(paths?.path);
      dio.download(imgPath, "${paths?.path}/minion.jpg",
          onReceiveProgress: (rec, total) {
        print("receive $rec total $total");
        setState(() {
          progress = ((rec / total * 100).toDouble());
          print(progress);
        });
        setState(() {
          mmm=paths?.path;
        });
      });
    } catch (e) {
      print(e);
    }
    setState(() {
      isOpen=true;
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
          : isOpen==false ?Center(
              child: InkWell(
                  onTap: () {
                    isDownload = true;
                    downloadingg();
                  },
                  child: Text("Download")),
            ) : Center(child: Image.file(mmm),),
    ));
  }
}
