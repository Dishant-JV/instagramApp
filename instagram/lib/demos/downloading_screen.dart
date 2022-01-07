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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () async {
            final status = await Permission.storage.request();
            final external= await getExternalStorageDirectory();
            if (status.isGranted) {
              final id=await FlutterDownloader.enqueue(
                  fileName: "profiles",
                  showNotification: true,
                  openFileFromNotification: true,
                  url:
                  "https://www.pinkvilla.com/imageresize/vicky_kaushal_shares_cool_pic_amid_wedding.jpg?width=752&format=webp&t=pvorg",
                  savedDir:external!.path);
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
    );
  }
}
