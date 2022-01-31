
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';

class PageViewDemo2 extends StatefulWidget {
  const PageViewDemo2({Key? key}) : super(key: key);

  @override
  _PageViewDemo2State createState() => _PageViewDemo2State();
}

class _PageViewDemo2State extends State<PageViewDemo2> {
  List<String> img = [
    "assets/images/lotti1.json",
    "assets/images/lotti2.json",
    "assets/images/lotti3.json",
    "assets/images/lotti4.json",
    "assets/images/letsgo.json",
  ];
  List<String> content = ["Dishant", "Rakesh", "Piyush", "Ayushi","Finish"];
  PageController controller = PageController();
  int curIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Container(
          child: Column(
        children: [
          Stack(
            children: [
            Container(
              height: MediaQuery.of(context).size.height*0.65,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.yellow.shade100,
                    width: MediaQuery.of(context).size.width*0.2,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: MediaQuery.of(context).size.width*0.2,
                  )
                ],
              ),
            ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),),
                    color: Colors.yellow,
                  ),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  alignment: Alignment.center,
                  ),
              Container(
                decoration: BoxDecoration(
                    color:Colors.yellow.shade100,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(60))
                ),

                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.6),
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.32,
              ),
              Container(
                 // color: Colors.pink,
                width: double.infinity,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1 ),
                height: MediaQuery.of(context).size.height*0.7,
                child: PageView.builder(onPageChanged: (value){
                  setState(() {
                    curIndex=value;
                  });
                },controller: controller,itemCount: img.length,itemBuilder: (context,index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:curIndex==4 ? MediaQuery.of(context).size.height*0.3 : MediaQuery.of(context).size.height*0.4,
                        child: Container(
                          margin: curIndex==4 ? EdgeInsets.only(top: 120):null,
                          child: Padding(
                            padding:  EdgeInsets.only(top: curIndex== 4 ? MediaQuery.of(context).size.height*0.05 :MediaQuery.of(context).size.height*0.1),
                            child: Lottie.asset(img[curIndex],fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Text(content[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 29),)
                    ],
                  );
                }),
              ),
            ],
          ),
         curIndex!=4 ? Row(
            children: [
              InkWell(
                  onTap: (){
                if(curIndex >=0){
                  controller.animateToPage(curIndex-1, duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
                }
              },
                  child: Padding(padding: EdgeInsets.only(left: 10),child: Icon(Icons.arrow_back,size: 28,))),
              Expanded(
                child: DotsIndicator(
                  dotsCount: 4,
                  position: curIndex.toDouble(),
                  onTap: (value){
                    setState(() {
                      curIndex=value.toInt();
                    });
                    controller.animateToPage(curIndex, duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
                  },
                  decorator: DotsDecorator(
                      activeColor: Colors.blue.shade600,
                      activeSize: Size(18, 9),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),

              InkWell(
                onTap: (){
                  if(curIndex <=4){
                    controller.animateToPage(curIndex+1, duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward,size: 28,),
                ),
              ),
            ],
          ) : InkWell(
           onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Insta()));
           },
            child: Container(
             height: 55,
             width: 55,
             child: Lottie.asset("assets/images/next.json",fit: BoxFit.fill)
         ),
         )
        ],
      )),
    );
  }
}
