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
  List<Widget> pages = [WpChat(), WpStatus(), WpCalls()];
  int index = 0;

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
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.06,
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
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.035),
                          child:
                              Icon(Icons.more_vert, color: Color(0XFF5e696f)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.0288),
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "CHATS",
                              style: TextStyle(
                                  color: Color(0XFF5e696f),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "STATUS",
                              style: TextStyle(
                                  color: Color(0XFF5e696f),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "CALLS",
                              style: TextStyle(
                                  color: Color(0XFF5e696f),
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
            Expanded(child: pages[index])
          ],
        ),
      ),
    );
  }
}
