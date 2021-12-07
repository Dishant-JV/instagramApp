import 'package:flutter/material.dart';

import '../show_image.dart';

class ListviewDemo extends StatefulWidget {
  ListviewDemo({Key? key}) : super(key: key);

  @override
  _ListviewDemoState createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  final List<String> name = [
    'dishant',
    'rajnik',
    'bhavik',
    'aashik',
    'jj',
    'kk',
    'hh',
    'dd'
  ];
  final List<String> picture = [
    "https://b.zmtcdn.com/data/pictures/7/3800017/ba50a5176f9b3abf84a4b734543474a2.jpg?fit=around|771.75:416.25&crop=771.75:416.25;*,*",
    "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
    "https://thescoopbeats.com/wp-content/uploads/2021/11/Kiara-Advani.jpg",
    "https://thescoopbeats.com/wp-content/uploads/2021/11/Kiara-Advani.jpg",
    "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
    "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
    "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
    "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
            children: [
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Container(
                 height: 110,
                 color: Colors.red,
                 child: Row(
                   children: [
                     Container(
                       height: 115,
                       width: double.infinity,
                       padding: EdgeInsets.only(top: 3, bottom: 8),
                       decoration: BoxDecoration(
                         color: Colors.black,
                         border: Border(
                           bottom:
                           BorderSide(color: Colors.white24, width: 0),
                         ),
                       ),
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(top: 15, left: 6),
                               child: Column(
                                 children: [
                                   Stack(
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           image: DecorationImage(
                                               image: NetworkImage(
                                                 "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
                                               ),
                                               fit: BoxFit.cover),
                                           shape: BoxShape.circle,
                                         ),
                                         height: 65,
                                         width: 65,
                                         margin: EdgeInsets.only(left: 10),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(
                                             left: 55, top: 46),
                                         height: 18,
                                         width: 18,
                                         decoration: BoxDecoration(
                                             color: Colors.blue.shade600
                                                 .withOpacity(0.9),
                                             shape: BoxShape.circle),
                                         child: Icon(
                                           Icons.add,
                                           color: Colors.white,
                                           size: 19,
                                         ),
                                       ),
                                     ],
                                   ),
                                   Container(
                                     margin:
                                     EdgeInsets.only(top: 7, left: 5),
                                     child: Text(
                                       "Your story",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             Container(
                               child: Column(
                                 children: [
                                   InkWell(
                                     onTap: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) =>
                                                   Images(
                                                     img: "",
                                                     nimg:
                                                     "https://themumbaicity.com/wp-content/uploads/2021/06/anu.jpg",
                                                   )));
                                     },
                                     child: Container(
                                       child: Container(
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                                 image: NetworkImage(
                                                   "https://themumbaicity.com/wp-content/uploads/2021/06/anu.jpg",
                                                 ),
                                                 fit: BoxFit.cover),
                                             shape: BoxShape.circle,
                                             border: Border.all(
                                                 color: Colors.black,
                                                 width: 3)),
                                         height: 68,
                                         width: 68,
                                       ),
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         gradient: LinearGradient(colors: [
                                           Colors.yellow,
                                           Colors.red,
                                         ]),
                                         border: Border.all(
                                             color: Colors.white10,
                                             width: 2),
                                       ),
                                       height: 73,
                                       width: 73,
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "piyush12_",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12),
                                     ),
                                   )
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 14, top: 13),
                             ),
                             Container(
                               child: Column(
                                 children: [
                                   InkWell(
                                     onTap: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) =>
                                                   Images(
                                                     img:
                                                     "assets/images/demo3.jpg",
                                                     nimg: "",
                                                   )));
                                     },
                                     child: Container(
                                       child: Container(
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                                 image: AssetImage(
                                                   "assets/images/demo3.jpg",
                                                 ),
                                                 fit: BoxFit.cover),
                                             shape: BoxShape.circle,
                                             border: Border.all(
                                                 color: Colors.black,
                                                 width: 3)),
                                         height: 68,
                                         width: 68,
                                       ),
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         gradient: LinearGradient(colors: [
                                           Colors.yellow,
                                           Colors.red,
                                         ]),
                                         border: Border.all(
                                             color: Colors.white10,
                                             width: 2),
                                       ),
                                       height: 73,
                                       width: 73,
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4,),
                                     child: Text(
                                       "Ayush561_.",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12),
                                     ),
                                   )
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 11, top: 13),
                             ),
                             Container(
                               child: Column(
                                 children: [
                                   InkWell(
                                     onTap: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) =>
                                                   Images(
                                                     img:
                                                     "assets/images/demo4.jpg",
                                                     nimg: "",
                                                   )));
                                     },
                                     child: Container(
                                       child: Container(
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                                 image: AssetImage(
                                                   "assets/images/demo4.jpg",
                                                 ),
                                                 fit: BoxFit.cover),
                                             shape: BoxShape.circle,
                                             border: Border.all(
                                                 color: Colors.black,
                                                 width: 3)),
                                         height: 68,
                                         width: 68,
                                       ),
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         gradient: LinearGradient(colors: [
                                           Colors.yellow,
                                           Colors.red,
                                         ]),
                                         border: Border.all(
                                             color: Colors.white10,
                                             width: 2),
                                       ),
                                       height: 73,
                                       width: 73,
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "heena67@1",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12),
                                     ),
                                   )
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 11, top: 13),
                             ),
                             Container(
                               child: Column(
                                 children: [
                                   InkWell(
                                     onTap: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) =>
                                                   Images(
                                                     img:
                                                     "assets/images/demo5.jpg",
                                                     nimg: "",
                                                   )));
                                     },
                                     child: Container(
                                       child: Container(
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                                 image: AssetImage(
                                                   "assets/images/demo5.jpg",
                                                 ),
                                                 fit: BoxFit.cover),
                                             shape: BoxShape.circle,
                                             border: Border.all(
                                                 color: Colors.black,
                                                 width: 3)),
                                         height: 68,
                                         width: 68,
                                       ),
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         gradient: LinearGradient(colors: [
                                           Colors.yellow,
                                           Colors.red,
                                         ]),
                                         border: Border.all(
                                             color: Colors.white10,
                                             width: 2),
                                       ),
                                       height: 73,
                                       width: 73,
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "jenil0909",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12),
                                     ),
                                   )
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 11, top: 13),
                             ),
                             Container(
                               child: Column(
                                 children: [
                                   InkWell(
                                     onTap: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) =>
                                                   Images(
                                                     img:
                                                     "assets/images/demo7.jpg",
                                                     nimg: "",
                                                   )));
                                     },
                                     child: Container(
                                       child: Container(
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                                 image: AssetImage(
                                                   "assets/images/demo7.jpg",
                                                 ),
                                                 fit: BoxFit.cover),
                                             shape: BoxShape.circle,
                                             border: Border.all(
                                                 color: Colors.black,
                                                 width: 3)),
                                         height: 65,
                                         width: 65,
                                       ),
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         gradient: LinearGradient(colors: [
                                           Colors.yellow,
                                           Colors.red,
                                         ]),
                                         border: Border.all(
                                             color: Colors.white10,
                                             width: 2),
                                       ),
                                       height: 70,
                                       width: 70,
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 4),
                                     child: Text(
                                       "piyush12_",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12),
                                     ),
                                   )
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                               ),
                               margin: EdgeInsets.only(left: 11, top: 13),
                             ),
                           ],
                         ),
                       ),
                     ),//Back up  od story container
                     Container(
                       margin: EdgeInsets.only(left: 6),
                       child: Column(
                         children: [
                           Stack(
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                       image: NetworkImage(
                                         "https://img.indiaforums.com/person/640x480/1/0280-jannat-zubair-rahmani.jpg?c=5kU096",
                                       ),
                                       fit: BoxFit.cover),
                                   shape: BoxShape.circle,
                                 ),
                                 height: 65,
                                 width: 65,
                                 margin: EdgeInsets.only(left: 10),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left: 55, top: 46),
                                 height: 18,
                                 width: 18,
                                 decoration: BoxDecoration(
                                     color:
                                     Colors.blue.shade600.withOpacity(0.9),
                                     shape: BoxShape.circle),
                                 child: Icon(
                                   Icons.add,
                                   color: Colors.white,
                                   size: 19,
                                 ),
                               ),
                             ],
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 7, left: 5),
                             child: Text(
                               "Your story",
                               style: TextStyle(
                                   color: Colors.white, fontSize: 12),
                             ),
                           ),
                         ],
                       ),
                     ),
                     ListView.builder(
                         shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                         itemCount: name.length,
                         itemBuilder: (BuildContext context, index) {
                           return Column(
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                       image: NetworkImage(
                                         picture[index],
                                       ),
                                       fit: BoxFit.cover),
                                   shape: BoxShape.circle,
                                 ),
                                 height: 65,
                                 width: 65,
                                 margin: EdgeInsets.only(left: 10),
                               ),
                               Container(
                                 child: Text(name[index]),
                               )
                             ],
                           );
                         })
                   ],
                 ),
               ),
             )


            ],
          )
      ),
    );
  }
}
