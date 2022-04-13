import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:instagram/imageModel.dart';
import 'package:instagram/search_screen.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

class Images extends StatefulWidget {
  final String? img;
  final String? nimg;
  final String? ind;
  const Images({Key? key, this.img, this.nimg, this.ind}) : super(key: key);


  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {


  @override
  Widget build(BuildContext context) {

    final args=ModalRoute.of(context)?.settings.arguments as ImageModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: args.img == ""
            ? Container(
          height: double.infinity,
          width: double.infinity,
          child: GestureZoomBox(child: PinchZoom(child: Image.network(args.nimg.toString())))
        )
            : 
        GestureZoomBox(
          child: PinchZoom(
              child: Image.asset(args.img.toString())),
        )
      ),
    );
  }
}
