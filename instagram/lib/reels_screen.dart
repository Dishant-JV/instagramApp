import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            image: new DecorationImage(image: NetworkImage("https://cdnb.artstation.com/p/assets/images/images/028/187/293/large/shenaaz-suliman-black-jaguarsmall.jpg?1593716005"),fit:BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 470,
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
                margin: EdgeInsets.only(right: 13),
                width: double.infinity,
                  height: 200,
                  //color: Colors.pink,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.favorite_outline,color: Colors.white,size: 28,),
                          Text("166k",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),),
                        ],
                      )
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.chat_bubble_outline_rounded,color: Colors.white,size: 28,),
                          Text("181",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),)
                        ],
                      )
                    ),
                    Container(
                      child: Icon(Icons.share,color: Colors.white,size: 28,),
                    ),
                    Container(
                      child: Icon(Icons.restaurant_menu,color: Colors.white,size: 28,),
                    ),
                  ],
                )
              ),
              Container(
               margin: EdgeInsets.only(left: 15,),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage(
                               "assets/images/demo.JPG",
                             ),
                             fit: BoxFit.cover),
                         shape: BoxShape.circle,
                       ),
                       height: 38,
                       width: 38,
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 8),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           child: Text("Jigli Khajur ",
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                         ),
                           margin: EdgeInsets.only(bottom: 2),
                         ),
                         Container(
                           child: Text("See all remix ",
                             style: TextStyle(color: Colors.white,fontSize: 13),
                           ),),
                       ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 5),
                       child: RichText(
                         text: TextSpan(
                           children: [
                             TextSpan(
                               text: "2w  ",
                               style: TextStyle(color: Colors.white54,fontWeight: FontWeight.normal,fontSize: 15)
                             ),
                             TextSpan(
                               text: "Follow",
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15)
                             ),
                           ]
                         ),
                       )
                     ),
                   ],
                 ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 13),
                  width: double.infinity,
                  height: 200,
                  //color: Colors.pink,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          child: Column(
                            children: [
                              Icon(Icons.favorite_outline,color: Colors.white,size: 28,),
                              Text("166k",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),),
                            ],
                          )
                      ),
                      Container(
                          child: Column(
                            children: [
                              Icon(Icons.chat_bubble_outline_rounded,color: Colors.white,size: 28,),
                              Text("181",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),)
                            ],
                          )
                      ),
                      Container(
                        child: Icon(Icons.share,color: Colors.white,size: 28,),
                      ),
                      Container(
                        child: Icon(Icons.restaurant_menu,color: Colors.white,size: 28,),
                      ),
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 15,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo.JPG",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 38,
                      width: 38,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Jigli Khajur ",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                            ),
                            margin: EdgeInsets.only(bottom: 2),
                          ),
                          Container(
                            child: Text("See all remix ",
                              style: TextStyle(color: Colors.white,fontSize: 13),
                            ),),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "2w  ",
                                    style: TextStyle(color: Colors.white54,fontWeight: FontWeight.normal,fontSize: 15)
                                ),
                                TextSpan(
                                    text: "Follow",
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15)
                                ),
                              ]
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,bottom:10 ,top: 10),
                child: Row(
                  children: [
                    Expanded(child: Text("clinton_857... Original Audio",style: TextStyle(color: Colors.white),)),
          Container(
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/demo.JPG",
                  ),
                  fit: BoxFit.cover,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white,width: 2)
            ),
            height: 30,
            width: 30,
          ),
                    Container(
                      margin: EdgeInsets.only(right: 13),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo.JPG",
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white,width: 2)
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
