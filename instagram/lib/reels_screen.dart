import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        //backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/demo3.jpg"),fit:BoxFit.cover)
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 475,
                margin: EdgeInsets.only(top:15,left: 20,right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Reels",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 23),),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 27,),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                  height: 170,
                  color: Colors.pink,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.favorite_outline,color: Colors.white,),
                    ),
                    Container(
                      child: Icon(Icons.chat_bubble_outline_rounded,color: Colors.white,),
                    ),
                    Container(
                      child: Icon(Icons.share,color: Colors.white,),
                    )
                  ],
                )
              )
              // Container(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Row(
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                   image: AssetImage(
              //                     "assets/images/demo.JPG",
              //                   ),
              //                   fit: BoxFit.cover),
              //               shape: BoxShape.circle,
              //             ),
              //             height: 30,
              //             width: 30,
              //           ),
              //           Container(
              //             child: RichText(
              //               text: TextSpan(
              //                 text: "Jigli Khajur ",
              //                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              //                 children: [
              //                   TextSpan(
              //                     text: "2w  ",
              //                     style: TextStyle(color: Colors.white54,fontWeight: FontWeight.normal)
              //                   ),
              //                   TextSpan(
              //                     text: "Follow",
              //                     style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
              //                   ),
              //                 ]
              //               ),
              //             )
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
