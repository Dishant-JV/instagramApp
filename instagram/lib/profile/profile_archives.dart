import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile_screen.dart';

class Archives extends StatefulWidget {
  const Archives({Key? key}) : super(key: key);

  @override
  _ArchivesState createState() => _ArchivesState();
}

class _ArchivesState extends State<Archives> {
  @override
  int curindex =0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 20,bottom: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context, MaterialPageRoute(builder: (context) => Profile()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Icon(Icons.arrow_back,color: Colors.white,size: 25,),
                            ),
                          ),
                          Text("Stories Archive",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                          Icon(Icons.keyboard_arrow_down,color: Colors.white,)
                        ],
                      ),
                    ),
                    Container(child: Icon(Icons.more_vert,color: Colors.white,),)
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                     InkWell(
                      onTap: (){
                        setState(() {
                          curindex =0;
                        });
                      },
                      child: curindex == 0 ? Container(
                        width: 129,
                        alignment: Alignment.center,
                        child: Icon(Icons.ac_unit_rounded,color: Colors.white,),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.white,width: 2))
                        ),
                      ) : Container(
                        width: 130,
                        alignment: Alignment.center,
                        child: Icon(Icons.ac_unit_rounded,color: Colors.grey.withOpacity(0.5),),
                      ),
                    ) ,
                    InkWell(
                      onTap: (){
                        setState(() {
                          curindex =1;
                        });
                      },
                      child: curindex == 1 ? Container(
                        width: 129,
                        alignment: Alignment.center,
                        child: Icon(Icons.calendar_today_rounded,color: Colors.white,),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.white,width: 2))
                        ),
                      ) : Container(
                        width: 130,
                        alignment: Alignment.center,
                        child: Icon(Icons.calendar_today_rounded,color: Colors.grey.withOpacity(0.5),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          curindex =2;
                        });
                      },
                      child: curindex == 2 ?Container(
                        width: 129,
                        alignment: Alignment.center,
                        child: Icon(Icons.location_on,color: Colors.white,),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.white,width: 2))
                        ),
                      ) : Container(
                        width: 130,
                        alignment: Alignment.center,
                        child: Icon(Icons.location_on,color: Colors.grey.withOpacity(0.5),),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.vertical,
                  child: curindex == 0 ? archive() : Container()
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
archive()
{
  return Column(
    children: [
      Container(
        child: Row(
          children: [
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(top:BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,),
              child: Image.asset("assets/images/demo4.jpg",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(top:BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo5.jpg",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(top:BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo6.jpg",fit: BoxFit.cover,),
            )
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,),
              child: Image.asset("assets/images/demo7.jpg",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo2.JPG",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo.JPG",fit: BoxFit.cover,),
            )
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,),
              child: Image.asset("assets/images/demo6.jpg",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo5.jpg",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo4.jpg",fit: BoxFit.cover,),
            )
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,),
              child: Image.asset("assets/images/demo.JPG",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo5.jpg",fit: BoxFit.cover,),
            ),
            Container(
              height: 225,
              width: 130,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black,width: 2))
                ,color: Colors.pink,),
              child: Image.asset("assets/images/demo3.jpg",fit: BoxFit.cover,),
            )
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 62,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Only you can see your memories and archivr story unless you",style: TextStyle(color: Colors.grey.withOpacity(0.9)),),
            Text("choose to share them",style: TextStyle(color: Colors.grey.withOpacity(0.9)),)
          ],
        ),
      ),
    ],
  );
}
