import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
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
  get img => widget.img;

  get nimg => widget.nimg;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: widget.img == ""
            ? Container(
          height: double.infinity,
          width: double.infinity,
          child: GestureZoomBox(child: PinchZoom(child: Image.network(nimg)))
        )
            : 
        GestureZoomBox(
          child: PinchZoom(
              child: Image.asset(img)),
        )
      ),
    );
  }
}
