import 'package:flutter/material.dart';

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
        body: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
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
                      height: 45,
                      width: 45,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white54.withOpacity(0.8)
                      ),
                      child: Icon(Icons.add,color: Colors.black,size: 28,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22,),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text("Dynamic Warmup",style: TextStyle(color: Colors.white54.withOpacity(0.7),fontSize: 32,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                width: double.infinity,
                child: Text("Don't rush this exercises. Warmsup improve performance, reduce risk of injury, and prepare your mentality.",style: TextStyle(height: 1.3,color: Colors.grey.withOpacity(0.5),fontWeight: FontWeight.w500,fontSize: 13.2),),
              ),
              SizedBox(height: 20,),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 58),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 250,
                              width: 320,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                image: DecorationImage(image: NetworkImage("https://assets.vogue.in/photos/601291e222284e1c9b494ad7/1:1/w_3574,h_3574,c_limit/5%20female%20fitness%20myths,%20debunked%20by%20the%20pros.jpg"),fit: BoxFit.cover),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20  ),
                              height: 250,
                              width: 320,
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
                      width: 270,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.red
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.red
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
