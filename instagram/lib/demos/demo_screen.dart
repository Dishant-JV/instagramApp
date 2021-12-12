import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utils/size_utils.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: SizeUtils.width(context, 10),
                  margin: EdgeInsets.only(left: SizeUtils.width(context, 3.83),right: SizeUtils.width(context, 3.83),top: SizeUtils.width(context,3.83)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: SizeUtils.height(context, 10),
                        width: SizeUtils.width(context, 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.1),width: 1),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [Colors.white60,
                              Colors.black12,
                            ]),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.arrow_back,color: Colors.white,size: 25,),
                      ),
                      Container(
                        height: SizeUtils.height(context, 10),
                        width: SizeUtils.width(context, 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54.withOpacity(0.8)
                        ),
                        child: Icon(Icons.add,color: Colors.black,size: 28,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: SizeUtils.width(context,5)),
                Container(
                  margin: EdgeInsets.only(left: SizeUtils.width(context,3.83)),
                  alignment: Alignment.centerLeft,
                  child: Text("Dynamic Warmup",style: TextStyle(color: Colors.white54.withOpacity(0.7),fontSize: 32,fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: SizeUtils.width(context,3)),
                Container(
                  margin: EdgeInsets.only(left: SizeUtils.width(context,3.83),right: SizeUtils.width(context,3.83)),
                  child: Text("Don't rush this exercises. Warmsup improve performance, reduce risk of injury, and prepare your mentality.",style: TextStyle(height: 1.3,color: Colors.grey.withOpacity(0.5),fontWeight: FontWeight.w500,fontSize: 13.2),),
                ),
                SizedBox(height: SizeUtils.width(context,4.5)),
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned.fill(
                        child: Container(
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.only(bottom: SizeUtils.width(context,39.03)),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: SizeUtils.width(context,3.83)),
                                height: SizeUtils.width(context,61.22),
                                width: SizeUtils.width(context,85.46),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  image: DecorationImage(image: NetworkImage("https://assets.vogue.in/photos/601291e222284e1c9b494ad7/1:1/w_3574,h_3574,c_limit/5%20female%20fitness%20myths,%20debunked%20by%20the%20pros.jpg"),fit: BoxFit.cover),
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: SizeUtils.width(context,3.83)),
                                height: SizeUtils.width(context,61.22),
                                width: SizeUtils.width(context,85.46),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  image: DecorationImage(image: NetworkImage("https://assets.vogue.in/photos/601291e222284e1c9b494ad7/1:1/w_3574,h_3574,c_limit/5%20female%20fitness%20myths,%20debunked%20by%20the%20pros.jpg"),fit: BoxFit.cover),
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right:SizeUtils.width(context,1.79)),
                                    height: SizeUtils.width(context,24.23),
                                    width: SizeUtils.width(context,30.61),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.grey.shade900
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Icon(Icons.crop_square,color:Colors.yellow,size: 27,),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: SizeUtils.width(context,1.28)),
                                            child: Text("No Eqipment",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: SizeUtils.width(context,24.23),
                                    width: SizeUtils.width(context,30.61),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.grey.shade900
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Icon(Icons.network_locked_sharp,color:Colors.white,size: 25,),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            //color: Colors.white,
                                            height: SizeUtils.width(context,7.65),
                                            width: SizeUtils.width(context,19),
                                            margin: EdgeInsets.only(top: SizeUtils.width(context,1.28)),
                                            child: Text("Comfortable Pace",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: SizeUtils.width(context,1.80)),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right:SizeUtils.width(context,1.80)),
                                    height: SizeUtils.width(context,24.23),
                                    width: SizeUtils.width(context,30.61),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.grey.shade900
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Icon(Icons.timelapse_rounded,color:Colors.red,size: 25,),
                                          ),
                                          Container(
                                            //color: Colors.white,
                                            margin: EdgeInsets.only(top: SizeUtils.width(context,1.28)),
                                            child: Text("4-5 minutes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: SizeUtils.width(context,24.23),
                                    width: SizeUtils.width(context,30.61),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white
                                    ),
                                    child: Center(child: Text("Start",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),)),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                SizedBox(height: SizeUtils.width(context,3.83),),
                Container(
                  margin: EdgeInsets.only(left: SizeUtils.width(context, 3.83)),
                  alignment: Alignment.centerLeft,
                  child: Text("Summmary",style: TextStyle(color: Colors.white.withOpacity(0.7),fontWeight: FontWeight.w700,fontSize: 16.5),),
                ),
                Container(
                  margin: EdgeInsets.only(left: SizeUtils.width(context,3.83),right: SizeUtils.width(context,3.83),top: SizeUtils.width(context, 3.83),),
                  child: Row(
                    children: [
                     Expanded(
                       child: Row(
                         children: [
                           Container(
                             decoration: BoxDecoration(
                                 image: DecorationImage(image: NetworkImage("https://assets.vogue.in/photos/601291e222284e1c9b494ad7/1:1/w_3574,h_3574,c_limit/5%20female%20fitness%20myths,%20debunked%20by%20the%20pros.jpg"),fit: BoxFit.cover),
                                 borderRadius: BorderRadius.circular(7)
                             ),
                             height: SizeUtils.width(context, 10),
                             width: SizeUtils.width(context, 10),
                           ),
                           Container(
                               margin: EdgeInsets.only(left: SizeUtils.width(context, 3.83)),
                               child: Text("Lungs rotate",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w500,fontSize: 15.5),)
                           )
                         ],
                       ),
                     ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            children:[
                              TextSpan(
                                text: "12 ",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 22)
                              ),
                              TextSpan(
                                text: "x",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14)
                              )
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: SizeUtils.width(context,3.83),right: SizeUtils.width(context,3.83),top: SizeUtils.width(context, 3),),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage("https://assets.vogue.in/photos/601291e222284e1c9b494ad7/1:1/w_3574,h_3574,c_limit/5%20female%20fitness%20myths,%20debunked%20by%20the%20pros.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              height: SizeUtils.width(context, 10),
                              width: SizeUtils.width(context, 10),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: SizeUtils.width(context, 3.83)),
                                child: Text("Deep squate hold",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w500,fontSize: 15.5),)
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                    text: "30 ",
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 22)
                                ),
                                TextSpan(
                                    text: "x",
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14)
                                )
                              ]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: SizeUtils.width(context,3.83),right: SizeUtils.width(context,3.83),top: SizeUtils.width(context, 3),),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage("https://assets.vogue.in/photos/601291e222284e1c9b494ad7/1:1/w_3574,h_3574,c_limit/5%20female%20fitness%20myths,%20debunked%20by%20the%20pros.jpg"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              height: SizeUtils.width(context, 10),
                              width: SizeUtils.width(context, 10),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: SizeUtils.width(context, 3.83)),
                                child: Text("Knee letts",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w500,fontSize: 15.5),)
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                    text: "12 ",
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 22)
                                ),
                                TextSpan(
                                    text: "x",
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14)
                                )
                              ]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.yellow.shade600.withOpacity(0.9),
                  ),
                  margin: EdgeInsets.only(top: SizeUtils.width(context, 1.5),left: SizeUtils.width(context, 3.83),right: SizeUtils.width(context, 3.83)),
                  height: SizeUtils.width(context, 12.5),
                      child: Text("START YOUR JOURNEY",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w900,fontFamily:'Custom',fontSize: 12,letterSpacing: 1.5,wordSpacing: 1)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
