import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:get/get.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';
import 'package:zoom_widget/zoom_widget.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  final imageProvider =
      Image.network("https://picsum.photos/id/1001/5616/3744").image;
  int curIndex = 0;
  PageController _pageController = PageController();
  List imgList = [
    'assets/images/demo3.jpg',
    'assets/images/demo4.jpg',
    'assets/images/demo5.jpg',
  ];
  controller _cc = Get.put(controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Gallery",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.73,
            width: double.infinity,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    curIndex = index;
                  });
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: PinchZoom(
                        child: Image.asset(imgList[index]),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            height: MediaQuery.of(context).size.width * 0.22,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: imgList.length,
                itemBuilder: (context, index) => curIndex == index
                    ? Container(
                        height: MediaQuery.of(context).size.width * 0.22,
                        margin: EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width * 0.22,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(imgList[index]),
                                fit: BoxFit.cover)),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            _pageController.animateToPage(index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.2,
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(imgList[index]),
                                  fit: BoxFit.cover)),
                        ),
                      )),
          )
        ],
      ),
    );
  }
}

class controller extends GetxController {
  RxInt indexS = 0.obs;
}
