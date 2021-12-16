import 'package:flutter/material.dart';
import 'package:instagram/search_screen.dart';
import 'package:photo_view/photo_view.dart';

class Images extends StatefulWidget {
  final String? img;
  final String? nimg;

  const Images({Key? key, this.img, this.nimg}) : super(key: key);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  get img => widget.img;

  get nimg => widget.nimg;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>Search(
            isFocus: false,
          )));
          return Future(()=>true);
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: widget.img == ""
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: PhotoView(
                    imageProvider: NetworkImage(nimg!),
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.contained * 0.8,
                  ),
                )
              : Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: PhotoView(
                    imageProvider: AssetImage(img!),
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.contained * 0.8,
                  )),
        ),
      ),
    );
  }
}
