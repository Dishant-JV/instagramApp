import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            _openfile(
                url:
                    "https://filmfare.wwmindia.com/content/2020/dec/kiaraadvani21606907531.jpg",
                fileName: 'KyaraMams.jpg');
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
}

Future _openfile({required String url, required String fileName}) async {
  final file = await download(url, fileName);
  if (fileName == null) return;
  print('path: ${file!.path}');
  OpenFile.open(file.path);
}

Future<File?> download(String url, String fileName) async {
  Directory appStorage = Directory('/storage/emulated/0/Download');
  final file = File('${appStorage.path}/$fileName');
  final response = await Dio().get(url,
      options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: 0));
  final raf = file.openSync(mode: FileMode.write);
  raf.writeFromSync(response.data);
  await raf.close();
  return file;
}
