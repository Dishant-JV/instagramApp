import 'package:flutter/material.dart';

class DrawerDemo2 extends StatefulWidget {
  const DrawerDemo2({Key? key}) : super(key: key);

  @override
  _DrawerDemo2State createState() => _DrawerDemo2State();
}

class _DrawerDemo2State extends State<DrawerDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
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
                                      // Image border
                                      child: SizedBox.fromSize(
                                        // Image radius
                                        child: Container(
                                            height: 80,
                                            width: 110,
                                            child: Image.asset(
                                                'assets/images/demo3.jpg',
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10,right: 12),
                                      width: 185,
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
                                    Container(
                                      child: Text("\$34",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 20),),
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
                            })
                      ],
                    ))

              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.27),
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
