import 'package:flutter/material.dart';

import '../profile_screen.dart';

class Pactivity extends StatefulWidget {
  const Pactivity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Pactivity> {
  @override
  int index=0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context,MaterialPageRoute(builder: (context) => Profile()));
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 25,left: 20),
                            child: Icon(Icons.arrow_back,color: Colors.white,size: 27,),
                          ),
                        ),
                        Text("Your Acitivity",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                      ],
                    ),
                  ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          index =0;
                        });
                      },
                      child: index == 0 ? Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 196,
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.white,width: 2))
                        ),
                        child: Text("Links",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ) : Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 196,
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.5)))
                        ),
                        child: Text("Links",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 16),),
                      ),
                    ) ,
                    InkWell(
                      onTap: (){
                        setState(() {
                          index =1;
                        });
                      },
                      child: index == 1 ? Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 196,
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.white,width: 2))
                        ),
                        child: Text("Time",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ) : Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 196,
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.5)))
                        ),
                        child: Text("Time",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 16),),
                      ),
                    )
                  ],
                ),
              ) ,
              index == 0 ? links() : Container()
            ],
          ),
        ),
      ),
    );
  }
}
links()
{
  return Container(
    child: Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Links you've Visited",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                Text("Hide history",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 5),
            child: Row(
              children: [
                Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/images/demo7.jpg",fit: BoxFit.cover,),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Stream Photography - YouTube",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                      Text("m.youtube.com",style: TextStyle(color: Colors.grey.withOpacity(0.9)),),
                      Text("15 October",style: TextStyle(color: Colors.grey.withOpacity(0.9)),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
