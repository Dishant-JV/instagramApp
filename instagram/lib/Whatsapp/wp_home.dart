import 'package:flutter/material.dart';
import 'package:instagram/Whatsapp/wp_calls.dart';
import 'package:instagram/Whatsapp/wp_chat.dart';
import 'package:instagram/Whatsapp/wp_status.dart';

class WpHome extends StatefulWidget {
  const WpHome({Key? key}) : super(key: key);

  @override
  _WpHomeState createState() => _WpHomeState();
}

class _WpHomeState extends State<WpHome> {
  PageController pageController=PageController();
  int index =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0b1316),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0XFF171f25),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.27,
              width: double.infinity,
              color: Color(0XFF171f25),
              child: Column(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.width * 0.15,
                     // color: Colors.red,
                    margin: EdgeInsets.only(

                        left: MediaQuery.of(context).size.width * 0.04,
                        right: MediaQuery.of(context).size.width * 0.04),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "WhatsApp",
                              style: TextStyle(
                                  color: Color(0XFF5e696f),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.5),
                            ),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.search, color: Color(0XFF5e696f)),
                        ),
                        SizedBox(
                          height: 24,
                          width: 35,
                          child: Container(
                            // color: Colors.red,
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.035),
                            child:
                            PopupMenuButton(padding: EdgeInsets.all(0),
                             color: Color(0XFF171f25),
                             icon: Icon(Icons.more_vert, color: Color(0XFF5e696f)),
                              itemBuilder: (context)=>[
                                PopupMenuItem(child: Text("New Group",style: TextStyle(color: Colors.white),)),
                                PopupMenuItem(child: Text("New broadcast",style: TextStyle(color: Colors.white))),
                                PopupMenuItem(child: Text("Linked devices",style: TextStyle(color: Colors.white))),
                                PopupMenuItem(child: Text("Starred message",style: TextStyle(color: Colors.white))),
                                PopupMenuItem(child: Text("Payments",style: TextStyle(color: Colors.white))),
                                PopupMenuItem(child: Text("Settings",style: TextStyle(color: Colors.white))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(0, duration: Duration(milliseconds: 20), curve:Curves.easeOut);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: index == 0 ? Border(bottom: BorderSide(color: Color(0XFF128C7E),width: 3)) :Border(bottom: BorderSide(color: Color(0XFF171f25)))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "CHATS",
                              style: TextStyle(
                                  color: index == 0 ? Color(0XFF128C7E) : Color(0XFF5e696f),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(1, duration: Duration(milliseconds: 20), curve:Curves.easeOut);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: index == 1 ? Border(bottom: BorderSide(color:Color(0XFF128C7E),width: 3)) :Border(bottom: BorderSide(color: Color(0XFF171f25)))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "STATUS",
                              style: TextStyle(
                                  color: index == 1 ? Color(0XFF128C7E) : Color(0XFF5e696f),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(2, duration: Duration(milliseconds: 20), curve:Curves.easeOut);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: index == 2 ? Border(bottom: BorderSide(color: Color(0XFF128C7E),width: 3)) :Border(bottom: BorderSide(color: Color(0XFF171f25)))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "CALLS",
                              style: TextStyle(
                                  color: index == 2 ? Color(0XFF128C7E) : Color(0XFF5e696f),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value){
                  setState(() {
                    index=value;
                  });
                },
                children: [
                  WpChat(),
                  WpStatus(),
                  WpCalls()
                  // Expanded(child: pages[index])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
