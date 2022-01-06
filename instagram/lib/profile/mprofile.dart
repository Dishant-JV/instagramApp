import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/show_profile_images.dart';

class Mprofile extends StatefulWidget {
  const Mprofile({Key? key}) : super(key: key);

  @override
  _MprofileState createState() => _MprofileState();
}

class _MprofileState extends State<Mprofile> {
  var pic = [
    "assets/images/demo.JPG",
    "assets/images/demo3.jpg",
    "assets/images/demo4.jpg",
    "assets/images/demo5.jpg",
    "assets/images/demo6.jpg",
    "assets/images/demo7.jpg",
    "assets/images/demo.JPG",
    "assets/images/demo3.jpg",
    "assets/images/demo4.jpg",
    "assets/images/demo5.jpg",
    "assets/images/demo6.jpg",
    "assets/images/demo7.jpg",
    "assets/images/demo.JPG",
    "assets/images/demo3.jpg",
    "assets/images/demo4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: GridView.builder(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: pic.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileImages(
                                pImage: pic[index],
                              )));
                });
              },
              child: Container(
                child: Image.asset(
                  pic[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}
