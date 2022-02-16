import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';

class DrawerDemo2 extends StatefulWidget {
  const DrawerDemo2({Key? key}) : super(key: key);

  @override
  _DrawerDemo2State createState() => _DrawerDemo2State();
}

class _DrawerDemo2State extends State<DrawerDemo2> {
  GlobalKey<ScaffoldState> _keys = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 0,
      //   elevation: 0,
      //   systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
      // ),
      drawer: Container(
        child: Container(
          margin: EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel,
                    color: Colors.blue,
                    size: 35,
                  )),
              SizedBox(
                height: 70,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/demo6.jpg',
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.menu,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      "Menu Option",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.downloading,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Refunds",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.translate_rounded,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Transactions",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.settings,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50))),
      ),
      key: _keys,
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height * 0.30,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                _keys.currentState?.openDrawer();
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 25),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.qr_code_scanner_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            )),
                        Container(
                          child: Text(
                            "Search",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(25),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade500.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 5,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade700.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                    margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Order items",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        ListView.builder(
                            padding: EdgeInsets.only(top: 5),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 80,
                                          width: 110,
                                          child: Image.asset(
                                              'assets/images/demo3.jpg',
                                              fit: BoxFit.cover)),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 10, right: 12),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Basket Set",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 19,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "Seven stylish shower baskets with handels",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.grey
                                                      .withOpacity(0.7)
                                                      .withOpacity(0.4)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "\$34",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                            fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                Colors.grey.withOpacity(0.2)))),
                                height: 100,
                              );
                            }),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(right: 20, top: 10),
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "\$67",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 21))
                          ],
                          text: "Sub Total (3 items) ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey
                                  .withOpacity(0.7)
                                  .withOpacity(0.4))),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    "Club Member",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Check out",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  margin: EdgeInsets.all(25),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  child: Text("Cancel",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 17)),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.24),
            height: MediaQuery.of(context).size.height * 0.78,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
