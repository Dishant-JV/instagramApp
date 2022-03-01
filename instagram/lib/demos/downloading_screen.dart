import 'dart:io';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gallery_saver/files.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:share_extend/share_extend.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;

class DownloadingScreen extends StatefulWidget {
  const DownloadingScreen({Key? key}) : super(key: key);

  @override
  _DownloadingScreenState createState() => _DownloadingScreenState();
}

class _DownloadingScreenState extends State<DownloadingScreen> {
  // // String image =
  //      "https://static.toiimg.com/thumb/msid-85859270,width-400,resizemode-4/85859270.jpg";
  GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            downlod();
          },
          child: Container(
            key: _globalKey,
            height: 40,
            width: 120,
            color: Colors.red,
            child: Text("Download"),
          ),
        ),
      ),
    );
  }

  // _saveScreen() async {
  //   RenderRepaintBoundary? boundary =
  //       _globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  //   ui.Image? image = await boundary?.toImage("https://static.toiimg.com/thumb/msid-85859270,width-400,resizemode-4/85859270.jpg");
  //   ByteData? byteData =
  //       await image?.toByteData(format: ui.ImageByteFormat.png);
  //   Uint8List? pngBytes = byteData?.buffer.asUint8List();
  //   final id = ImageGallerySaver.saveImage(Uint8List.fromList(pngBytes!));
  //   print(id);
  // }

  void downlod() {
    Directory appStorage = Directory('/storage/emulated/0/Download/insta');
    String paths = appStorage.path + "/Faire.jpg";
    print(paths);
    Dio().download(
        "https://static.toiimg.com/thumb/msid-85859270,width-400,resizemode-4/85859270.jpg",
        paths);
  }
}
