import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ghome extends StatefulWidget {
  const Ghome({Key? key}) : super(key: key);

  @override
  _GhomeState createState() => _GhomeState();
}

class _GhomeState extends State<Ghome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 33, 37, 1),
        toolbarHeight: 0,
      ),
      backgroundColor: Color.fromRGBO(32, 33, 37, 4),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.165,
                          width: double.infinity,
                          color: Color.fromRGBO(32, 33, 37, 4),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.height * 0.02,
                                    left:
                                        MediaQuery.of(context).size.width * 0.035,
                                    right: MediaQuery.of(context).size.width *
                                        0.035),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          0.038,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.015),
                                              child: Icon(
                                                Icons.qr_code_scanner,
                                                color: Colors.blue,
                                                size: 18,
                                              )),
                                          Text(
                                            "Scan any QR",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.5),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.width *
                                          0.088,
                                      width: MediaQuery.of(context).size.width *
                                          0.088,
                                      decoration: BoxDecoration(
                                          color: Colors.pink.withOpacity(0.9),
                                          shape: BoxShape.circle),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "D",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/images/g-pay.png",
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width: MediaQuery.of(context).size.width * 0.75,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.125,
                          child: Image.asset(
                            "assets/images/home_img.jpg",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                        // margin: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.279),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        width: double.infinity,
                        child:Column(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.all(20),
                              color: Colors.red,
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.all(20),
                              color: Colors.red,
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.all(20),
                              color: Colors.red,
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.all(20),
                              color: Colors.red,
                            ),
                          ],
                        )
                    ),
                  )],
              ),
            )
          ],
        ),
      ),
    );
  }
}
