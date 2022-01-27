import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/Whatsapp/wp_status.dart';

class WpStatusImg extends StatefulWidget {
  final String? name;
  final String? time;
  final String? img;

  const WpStatusImg({Key? key, this.name, this.time, this.img})
      : super(key: key);

  @override
  _WpStatusImgState createState() => _WpStatusImgState();
}

class _WpStatusImgState extends State<WpStatusImg> {
  // double press = 0;
  Timer? timer;
  double _value = 0;

  // void download() {
  //   timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
  //     if (_value < 1) {
  //       setState(() {
  //         _value = _value + 0.00050;
  //       });
  //     } else {
  //       timer.cancel();
  //       Navigator.pop(
  //           context, MaterialPageRoute(builder: (context) => WpStatus()));
  //     }
  //   });
  // }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // download();
    startTimer(_value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _value = 1;
      },
      onLongPress: () {
        setState(() {
          timer?.cancel();
        });
      },
      onLongPressEnd: (details) {
        startTimer(_value);
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              LinearProgressIndicator(
                  minHeight: 2,
                  backgroundColor: Colors.grey,
                  value: (_value),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: MediaQuery.of(context).size.width * 0.145,
                color: Colors.black,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              timer?.cancel();
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/demo3.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                            height: MediaQuery.of(context).size.width * 0.12,
                            width: MediaQuery.of(context).size.width * 0.12,
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
                                    widget.name.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.006,
                                ),
                                Container(
                                  child: Text(
                                    widget.time.toString(),
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.018),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  widget.img.toString(),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void startTimer(double value) {
    timer = Timer.periodic(Duration(milliseconds:10), (timer) {
      if (_value <1) {
        setState(() {
          _value = _value+0.00067;
        });
      } else {
        Navigator.maybePop(context);
      }
    });
  }
}
