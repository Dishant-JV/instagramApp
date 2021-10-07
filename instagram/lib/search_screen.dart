import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin:
                EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 5),
                width: double.infinity,
                height: 33,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white12),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white54,
                        size: 20,
                      ),
                      margin: EdgeInsets.only(left: 17),
                    ),
                    Container(
                      child: Text(
                        "Search",
                        style: TextStyle(color: Colors.white54, fontSize: 17),
                      ),
                      margin: EdgeInsets.only(left: 17),
                    )
                  ],
                ),
              ),
              //Image.asset("assets/images/demo2.JPG")
              Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child:
                  Column(
                    children: [
                      Container(
                        child:  Image.asset("assets/images/demo3.jpg",fit: BoxFit.fill,),
                        height: 135,
                        width: 130,
                      ),
                      Container(
                        child:  Image.asset("assets/images/demo5.jpg",fit: BoxFit.fill,),
                        height: 135,
                        width: 130,
                      ),
                    ],
                  )),
                  Expanded(child:
                  Column(
                    children: [
                      Container(
                        child:  Image.asset("assets/images/demo3.jpg",fit: BoxFit.fill,),
                        height: 135,
                        width: 130,
                      ),
                      Container(
                        child:  Image.asset("assets/images/demo4.jpg",fit: BoxFit.fill,),
                        height: 135,
                        width: 130,
                      ),
                    ],
                  )),
                  Column(
                    children: [
                      Container(
                        child:  Image.asset("assets/images/demo.JPG",fit: BoxFit.fill,),
                        height: 270,
                        width: 130,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child:  Image.asset("assets/images/demo6.jpg",fit: BoxFit.fill,),
                    height: 135,
                    width: 130,
                  ),
                  Container(
                    child:  Image.asset("assets/images/demo7.jpg",fit: BoxFit.fill,),
                    height: 135,
                    width: 130,
                  ),
                  Container(
                    child:  Image.asset("assets/images/demo6.jpg",fit: BoxFit.fill,),
                    height: 135,
                    width: 130,
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child:  Image.asset("assets/images/demo5.jpg",fit: BoxFit.fill,),
                    height: 135,
                    width: 130,
                  ),
                  Container(
                    child:  Image.asset("assets/images/demo3.jpg",fit: BoxFit.fill,),
                    height: 135,
                    width: 130,
                  ),
                  Container(
                    child:  Image.asset("assets/images/demo4.jpg",fit: BoxFit.fill,),
                    height: 135,
                    width: 130,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child:  Image.asset("assets/images/demo5.jpg",fit: BoxFit.fill,),
                    height: 270,
                    width: 260,
                  ),
                  Column(
                    children: [
                      Container(
                        child:  Image.asset("assets/images/demo2.JPG",fit: BoxFit.fill,),
                        height: 135,
                        width: 130,
                      ),
                      Container(
                        child:  Image.asset("assets/images/demo4.jpg",fit: BoxFit.fill,),
                        height: 135,
                        width: 130,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
