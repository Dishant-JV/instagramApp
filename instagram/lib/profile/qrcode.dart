import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({Key? key}) : super(key: key);

  @override
  _QrcodeState createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
        ),
      ),
       //  body: Container(
       //    height: double.infinity,
       //    width: double.infinity,
       //    decoration: BoxDecoration(
       //        image: new DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/8a/24/78/8a2478068964006b3ec92e749dc02cd9.png"),fit: BoxFit.cover)
       //    ),
       //    child: Center(
       //      child: Container(
       //        height: 300,
       //        width: 300,
       // child: Image.network("https://www.investopedia.com/thmb/ZG1jKEKttKbiHi0EkM8yJCJp6TU=/1148x1148/filters:no_upscale():max_bytes(150000):strip_icc()/qr-code-bc94057f452f4806af70fd34540f72ad.png",fit: BoxFit.cover,),
       //        alignment: Alignment.center,
       //      ),
       //    ),
       //  ),
    );
  }
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      //do something
    });
  }
}

