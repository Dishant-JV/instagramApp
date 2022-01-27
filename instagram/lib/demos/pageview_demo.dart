import 'dart:async';

import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  Timer? timer;
  PageController pageController = PageController(viewportFraction: 0.8,);

  int pageindex = 0;
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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    pageindex = value;
                  });
                },
                controller: pageController,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(index.toString()),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (pageindex > 0) {
                        pageController.animateToPage(pageindex - 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Text("previuos")),
                ElevatedButton(
                    onPressed: () {

                      pageController.animateToPage(pageindex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text("Next")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
