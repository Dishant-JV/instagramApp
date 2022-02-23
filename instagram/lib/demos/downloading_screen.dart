import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

class DownloadingScreen extends StatefulWidget {
  const DownloadingScreen({Key? key}) : super(key: key);

  @override
  _DownloadingScreenState createState() => _DownloadingScreenState();
}

class _DownloadingScreenState extends State<DownloadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            downlod();
          },
          child: Container(
            height: 40,
            width: 120,
            color: Colors.red,
            child: Text("Download"),
          ),
        ),
      ),
    );
  }

  void downlod() {
    Directory appStorage = Directory('/storage/emulated/0/Download');
    String paths = appStorage.path + "/Mamss.jpg";
    Dio().download(
        "https://thescoopbeats.com/wp-content/uploads/2021/11/Kiara-Advani.jpg",
        paths);
    OpenFile.open(paths);
  }
}
