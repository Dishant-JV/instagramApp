
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WpPersonChat extends StatefulWidget {
  const WpPersonChat({Key? key}) : super(key: key);

  @override
  _WpPersonChatState createState() => _WpPersonChatState();
}

class _WpPersonChatState extends State<WpPersonChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0XFF0b1316),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Color(0XFF015c4b),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.145,
              color: Color(0XFF171f25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.015),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/demo3.jpg"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                          height: MediaQuery.of(context).size.width * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.025,
                              top: MediaQuery.of(context).size.width * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Clg Smit Sheta",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 17.5),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.006,
                              ),
                              Container(
                                child: Text(
                                  "last seen today at 10:54 pm",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.videocam,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.015),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 22,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0XFF015c4b),
                child: Container(
                  width: double.infinity,
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width*0.18,
                        child: ListView.builder(
                          shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width * 0.03,
                                    left: MediaQuery.of(context).size.width * 0.04),
                                height: MediaQuery.of(context).size.width * 0.08,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child: Container(
                                   alignment: Alignment.center,
                                    child: Text(
                                      "Hyyy",
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),
                                    )),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0XFF015c4b),
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.011),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.008),
                      height: MediaQuery.of(context).size.width * 0.119,
                      child: Form(
                        child: TextFormField(
                          showCursor: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: Colors.white54,
                              ),
                              hintText: "Message",
                              hintStyle: TextStyle(
                                  color: Colors.white54, fontSize: 13),
                              filled: true,
                              fillColor: Color(0XFF0b1316),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.008),
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.width * 0.118,
                    width: MediaQuery.of(context).size.width * 0.118,
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
