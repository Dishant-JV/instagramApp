import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utils/size_utils.dart';

class DemoScreen2 extends StatefulWidget {
  const DemoScreen2({Key? key}) : super(key: key);

  @override
  _DemoScreen2State createState() => _DemoScreen2State();
}

class _DemoScreen2State extends State<DemoScreen2> {
  bool isVisible=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      setState(() {
        isVisible=true;
      });
    } );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          margin: EdgeInsets.only(top:  SizeUtils.width(context, 3),left: SizeUtils.width(context, 4.5),right:  SizeUtils.width(context, 4.5)),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.menu_open_outlined,size: 30,),
                    ),
                    Container(
                      child: Icon(Icons.search_sharp,size: 28,),
                    )
                  ],
                ),
              ),
              SizedBox(
                height:  SizeUtils.width(context, 5),
              ),
              Container(
                height:SizeUtils.width(context, 9.3),
                alignment: Alignment.centerLeft,
                child: Text("Delicious Salads",style: TextStyle(fontFamily: 'Custom',fontWeight: FontWeight.w900,fontSize: 28,letterSpacing: 0.5),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("We made fresh and Healthy food",style: TextStyle(fontFamily: 'Custom',color: Colors.grey.shade500,fontWeight: FontWeight.w400,fontSize: 13.5,),),
              ),
              SizedBox(
                height: SizeUtils.width(context,5),
              ),
              Container(
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: SizeUtils.width(context, 10),
                      width: SizeUtils.width(context, 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black
                      ),
                      child: Text("Salads",style: TextStyle(fontFamily: 'Custom',color: Colors.white),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:SizeUtils.width(context, 3),right: SizeUtils.width(context,3)),
                      alignment: Alignment.center,
                      height: SizeUtils.width(context, 10),
                      width: SizeUtils.width(context, 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100
                      ),
                      child: Text("Soups",style: TextStyle(fontFamily: 'Custom',color: Colors.black),),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: SizeUtils.width(context, 10),
                      width: SizeUtils.width(context, 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100
                      ),
                      child: Text("Grilled",style: TextStyle(fontFamily: 'Custom',color: Colors.black),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.width(context, 6),
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade100
                    ),
                    margin: EdgeInsets.only(left: SizeUtils.width(context, 3)),
                    height: SizeUtils.width(context, 40),
                    width: SizeUtils.width(context,90),
                    child: Container(
                      margin: EdgeInsets.only(right: SizeUtils.width(context,7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Text("Chicken Salad",style: TextStyle(fontFamily: 'Custom',fontWeight: FontWeight.w900,fontSize: 17),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: SizeUtils.width(context,1),bottom: SizeUtils.width(context, 1.5)),
                            child: Text("Chicken with Avocado",style: TextStyle(fontFamily: 'Custom',color: Colors.grey.shade500,fontSize: 12),),
                          ),
                          Container(
                            child: Text("\$32.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: SizeUtils.width(context, 50),
                    width: SizeUtils.width(context, 50),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/saladchicken.png"),fit: BoxFit.cover)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.width(context,4),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned.fill(child: Container()),
                        Container(alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.grey.shade100
                          ),
                          margin: EdgeInsets.only(bottom: SizeUtils.width(context,3),top: SizeUtils.width(context, 15)),
                          height: SizeUtils.width(context, 55),
                          width: SizeUtils.width(context,35),
                          child: Container(
                            margin: EdgeInsets.only(top: SizeUtils.width(context,15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  child: Text("Mixed Salad",style: TextStyle(fontFamily: 'Custom',fontWeight: FontWeight.w900,fontSize: 16),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: SizeUtils.width(context,1),bottom: SizeUtils.width(context, 1)),
                                  child: Text("Mix Vegitables",style: TextStyle(fontFamily: 'Custom',color: Colors.grey.shade500,fontSize: 12),),
                                ),
                                Container(
                                  child: Text("\$24.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: SizeUtils.width(context, 10),
                          width: SizeUtils.width(context, 10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Visibility(
                            visible: isVisible,
                            child: Container(
                              height: SizeUtils.width(context,36),
                              width: SizeUtils.width(context, 36),
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/saladchicken.png"),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned.fill(child: Container()),
                        Container(alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.grey.shade100
                          ),
                          margin: EdgeInsets.only(bottom: SizeUtils.width(context,3),top: SizeUtils.width(context, 15)),
                          height: SizeUtils.width(context, 55),
                          width: SizeUtils.width(context,35),
                          child: Container(
                            margin: EdgeInsets.only(top: SizeUtils.width(context,15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  child: Text("Quinoa Salad",style: TextStyle(fontFamily: 'Custom',fontWeight: FontWeight.w900,fontSize: 16),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: SizeUtils.width(context,1),bottom: SizeUtils.width(context, 1)),
                                  child: Text("Spicy with garlic",style: TextStyle(fontFamily: 'Custom',color: Colors.grey.shade500,fontSize: 12),),
                                ),
                                Container(
                                  child: Text("\$24.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: SizeUtils.width(context, 10),
                          width: SizeUtils.width(context, 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: SizeUtils.width(context,36),
                            width: SizeUtils.width(context, 36),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/saladchicken.png"),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.width(context,10),
              ),
              Container(
                height: SizeUtils.width(context,18),
                width: SizeUtils.width(context,90),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home_filled,color: Colors.white,size:30),
                    Icon(Icons.note_rounded,color: Colors.white,size: 30,),
                    Icon(Icons.chat,color: Colors.white,size: 28,),
                    Icon(Icons.person,color: Colors.white,size: 30,),
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
