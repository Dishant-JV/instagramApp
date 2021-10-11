import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
  backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top:13,left: 20,right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            child: Text("dishant_7181",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 22),),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,size: 25,),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Icon(Icons.menu,color: Colors.white,size: 30,),
                    )
                  ],
                ),
              ),
             Expanded(
               child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Column(
                   children: [
                     Container(
                       margin: EdgeInsets.only(top: 25),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage(
                                     "assets/images/demo2.JPG",
                                   ),
                                   fit: BoxFit.cover),
                               shape: BoxShape.circle,
                             ),
                             height:85 ,
                             width: 85,
                           ),
                           Container(
                             child: Column(
                               children: [
                                 Container(
                                   child: Text("14",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(top: 3),
                                   child: Text("Posts",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                                 ),
                               ],
                             ),
                           ),
                           Container(
                             child: Column(
                               children: [
                                 Container(
                                   child: Text("512",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(top: 3),
                                   child: Text("Followers",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                                 ),
                               ],
                             ),
                           ),
                           Container(
                             child: Column(
                               children: [
                                 Container(
                                   child: Text("412",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(top: 3),
                                   child: Text("Following",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 20,top: 15),
                       width:double.infinity,
                       child: Text("||... Dishant Vaghasiya ...||",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 20,top: 5),
                       width:double.infinity,
                       child: Text("Truth is Debit Card",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 50,top: 3),
                       width:double.infinity,
                       child: Text("Pay First , Enjoy Later....",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 20,top: 3),
                       width:double.infinity,
                       child: Text("Lie is Credit Card",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 50,top: 3),
                       width:double.infinity,
                       child: Text("Enjoy First Pay Later....",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 20,top:13),
                       child: Row(
                         children: [
                           Container(
                               height: 31,
                               width: 312,
                               // color: Colors.pink,
                               alignment: Alignment.center,
                               child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                               decoration:BoxDecoration(
                                   border: Border.all(color: Colors.grey),
                                   borderRadius: BorderRadius.circular(4)
                               )
                           ),
                           Container(
                             alignment: Alignment.center,
                             margin: EdgeInsets.only(left: 7,right: 20),
                             height: 31,
                             width: 33,
                             decoration:BoxDecoration(
                                 border: Border.all(color: Colors.grey),
                                 borderRadius: BorderRadius.circular(4)
                             ),
                             child: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
                           )
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 15),
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             Container(
                               child: Column(
                                 children: [
                                   Container(
                                     child: Container(
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage(
                                                 "assets/images/demo3.jpg",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                           border: Border.all(
                                               color: Colors.black, width: 3)),
                                       height: 60,
                                       width: 60,
                                     ),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey,),
                                     ),
                                     height: 65,
                                     width: 65,
                                   ),
                                   Container(
                                       margin: EdgeInsets.only(top: 8, left: 5),
                                       child: Row(
                                         children: [
                                           Icon(Icons.favorite,color: Colors.blue,size: 16,),
                                           Icon(Icons.favorite,color: Colors.blue,size: 16,)
                                         ],
                                       )
                                   ),
                                 ],
                                 mainAxisAlignment: MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 5, right: 5),
                             ),
                             Container(
                               child: Column(
                                 children: [
                                   Container(
                                     child: Container(
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage(
                                                 "assets/images/demo4.jpg",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                           border: Border.all(
                                               color: Colors.black, width: 3)),
                                       height: 60,
                                       width: 60,
                                     ),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey,),
                                     ),
                                     height: 65,
                                     width: 65,
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "Briti ce",
                                       style: TextStyle(
                                           color: Colors.white, fontSize: 12),
                                     ),
                                   ),
                                 ],
                                 mainAxisAlignment: MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 5, right: 5),
                             ),

                             Container(
                               child: Column(
                                 children: [
                                   Container(
                                     child: Container(
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage(
                                                 "assets/images/demo5.jpg",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                           border: Border.all(
                                               color: Colors.black, width: 3)),
                                       height: 60,
                                       width: 60,
                                     ),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey,),
                                     ),
                                     height: 65,
                                     width: 65,
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "Sweetie",
                                       style: TextStyle(
                                           color: Colors.white, fontSize: 12),
                                     ),
                                   ),
                                 ],
                                 mainAxisAlignment: MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 5, right: 5),
                             ),

                             Container(
                               child: Column(
                                 children: [
                                   Container(
                                     child: Container(
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage(
                                                 "assets/images/demo6.jpg",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                           border: Border.all(
                                               color: Colors.black, width: 3)),
                                       height: 60,
                                       width: 60,
                                     ),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey,),
                                     ),
                                     height: 65,
                                     width: 65,
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "Goaaaa",
                                       style: TextStyle(
                                           color: Colors.white, fontSize: 12),
                                     ),
                                   ),
                                 ],
                                 mainAxisAlignment: MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 5, right: 5),
                             ),

                             Container(
                               child: Column(
                                 children: [
                                   Container(
                                     child: Container(
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage(
                                                 "assets/images/demo7.jpg",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                           border: Border.all(
                                               color: Colors.black, width: 3)),
                                       height: 60,
                                       width: 60,
                                     ),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey,),
                                     ),
                                     height: 65,
                                     width: 65,
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "Gir..",
                                       style: TextStyle(
                                           color: Colors.white, fontSize: 12),
                                     ),
                                   ),
                                 ],
                                 mainAxisAlignment: MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 5, right: 5),
                             ),

                             Container(
                               child: Column(
                                 children: [
                                   Container(
                                     child: Container(
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage(
                                                 "assets/images/demo.JPG",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                           border: Border.all(
                                               color: Colors.black, width: 3)),
                                       height: 60,
                                       width: 60,
                                     ),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey,),
                                     ),
                                     height: 65,
                                     width: 65,
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "Gamde",
                                       style: TextStyle(
                                           color: Colors.white, fontSize: 12),
                                     ),
                                   ),
                                 ],
                                 mainAxisAlignment: MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 5, right: 5),
                             ),

                           ],
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                         ),
                       ),
                       height: 104,
                       width: double.infinity,
                       padding: EdgeInsets.only(top: 3, bottom: 3),
                       color: Colors.black,
                     ),
                     Container(
                       margin: EdgeInsets.only(top:15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Icon(Icons.pages_outlined,color: Colors.white,size: 30,),
                           Icon(Icons.person,color: Colors.white,size: 30,)
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top:10),
                       child: Row(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(

                             child: Image.asset(
                               "assets/images/demo.JPG",
                               fit: BoxFit.cover,
                             ),
                             height: 135,
                             width: 130,
                             decoration: BoxDecoration(
                                 border: Border(
                                   left:
                                   BorderSide(width: 2.5, color: Colors.black),
                                   right: BorderSide(
                                       width: 2.5, color: Colors.black),
                                   bottom: BorderSide(
                                       width: 2.5, color: Colors.black),)),
                           ),
                           Container(

                             child: Image.asset(
                               "assets/images/demo7.jpg",
                               fit: BoxFit.cover,
                             ),
                             height: 135,
                             width: 130,
                             decoration: BoxDecoration(
                                 border: Border(
                                   right: BorderSide(
                                       width: 2.5, color: Colors.black),
                                   bottom: BorderSide(
                                       width: 2.5, color: Colors.black),)),
                           ),

                           Container(
                             child: Image.asset(
                               "assets/images/demo3.jpg",
                               fit: BoxFit.cover,
                             ),
                             height: 135,
                             width: 130,
                             decoration: BoxDecoration(
                                 border: Border(
                                   right: BorderSide(
                                       width: 2.5, color: Colors.black),
                                   bottom: BorderSide(
                                       width: 2.5, color: Colors.black),)),
                           ),
                         ],
                       ),
                     ),
                     Row(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Container(

                           child: Image.asset(
                             "assets/images/demo7.jpg",
                             fit: BoxFit.cover,
                           ),
                           height: 135,
                           width: 130,
                           decoration: BoxDecoration(
                               border: Border(
                                 left:
                                 BorderSide(width: 2.5, color: Colors.black),
                                 right: BorderSide(
                                     width: 2.5, color: Colors.black),
                                 bottom: BorderSide(
                                     width: 2.5, color: Colors.black),)),
                         ),
                         Container(

                           child: Image.asset(
                             "assets/images/demo2.JPG",
                             fit: BoxFit.cover,
                           ),
                           height: 135,
                           width: 130,
                           decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(
                                     width: 2.5, color: Colors.black),
                                 bottom: BorderSide(
                                     width: 2.5, color: Colors.black),)),
                         ),

                         Container(
                           child: Image.asset(
                             "assets/images/demo5.jpg",
                             fit: BoxFit.cover,
                           ),
                           height: 135,
                           width: 130,
                           decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(
                                     width: 2.5, color: Colors.black),
                                 bottom: BorderSide(
                                     width: 2.5, color: Colors.black),)),
                         ),
                       ],
                     ),
                     Row(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Container(

                           child: Image.asset(
                             "assets/images/demo6.jpg",
                             fit: BoxFit.cover,
                           ),
                           height: 135,
                           width: 130,
                           decoration: BoxDecoration(
                               border: Border(
                                 left:
                                 BorderSide(width: 2.5, color: Colors.black),
                                 right: BorderSide(
                                     width: 2.5, color: Colors.black),
                                 bottom: BorderSide(
                                     width: 2.5, color: Colors.black),)),
                         ),
                         Container(

                           child: Image.asset(
                             "assets/images/demo7.jpg",
                             fit: BoxFit.cover,
                           ),
                           height: 135,
                           width: 130,
                           decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(
                                     width: 2.5, color: Colors.black),
                                 bottom: BorderSide(
                                     width: 2.5, color: Colors.black),)),
                         ),

                         Container(
                           child: Image.asset(
                             "assets/images/demo4.jpg",
                             fit: BoxFit.cover,
                           ),
                           height: 135,
                           width: 130,
                           decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(
                                     width: 2.5, color: Colors.black),
                                 bottom: BorderSide(
                                     width: 2.5, color: Colors.black),)),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}
