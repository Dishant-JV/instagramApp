import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:instagram/demos/sqflite/check%20and%20Update%20Quantity/check_update_model.dart';
import 'package:instagram/demos/sqflite/check%20and%20Update%20Quantity/check_update_table.dart';
import 'dart:async';

import 'package:instagram/demos/sqflite/wishlist/main_product_page.dart';

class CheckUpdateHome extends StatefulWidget {
  const CheckUpdateHome({Key? key}) : super(key: key);

  @override
  _CheckUpdateHomeState createState() => _CheckUpdateHomeState();
}

class _CheckUpdateHomeState extends State<CheckUpdateHome> {
  int? qty;
  var indexs;
  List<CheckUpdateModel> dbListData = [];
  CheckUpdateTable checkUpdateTable = CheckUpdateTable();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    var list = await checkUpdateTable.dbSelect();
    setState(() {
      dbListData=list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainProductPage()));
                },
                child: Container(
                  height: 70,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Go To Wishlist"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: MediaQuery.of(context).padding.top + 20),
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: dbListData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 230,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, index) {
                    CheckUpdateModel dynamicData = dbListData[index];
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 110,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(dynamicData.image.toString()),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 8),
                            child: Text(
                              dynamicData.name.toString(),
                              style: TextStyle(
                                  fontFamily: "RyeFonts",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 8, left: 8),
                                child: Text(
                                  "\$ ${dynamicData.price}",
                                  style: TextStyle(
                                      fontFamily: "RyeFonts",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.5),
                                ),
                              ),
                              dynamicData.isAdd == 0
                                  ? InkWell(
                                      onTap: () {
                                        setState(() {
                                          dynamicData.isAdd = 1;
                                        });
                                        checkUpdateTable.update_isadd(dynamicData.id, 1);
                                        checkUpdateTable.wishlist_id_insert(
                                            dynamicData.id,
                                            dynamicData.name,
                                            dynamicData.price);
                                      },
                                      child: Icon(
                                        Icons.favorite_outline,
                                        size: 28,
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        setState(() {
                                          dynamicData.isAdd = 0;
                                        });
                                        checkUpdateTable.update_isadd(dynamicData.id, 0);
                                       checkUpdateTable.wishlist_id_delete(dynamicData.id);
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        size: 28,
                                      ))
                            ],
                          ),
                          dynamicData.qty! > 0
                              ? Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              dynamicData.qty =
                                                  (dynamicData.qty! + 1);
                                            });
                                            checkUpdateTable.select_id_update(
                                                dynamicData.id, dynamicData.qty);
                                          },
                                          child: Icon(Icons.add)),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        dynamicData.qty.toString(),
                                        style: TextStyle(
                                            fontFamily: 'RyeFonts', fontSize: 19),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            if (dynamicData.qty! >= 1) {
                                              setState(() {
                                                dynamicData.qty =
                                                    (dynamicData.qty! - 1);
                                              });
                                              checkUpdateTable.select_id_update(
                                                  dynamicData.id,
                                                  dynamicData.qty);

                                              if (dynamicData.qty == 0) {
                                                setState(() {
                                                  checkUpdateTable
                                                      .select_id_update(
                                                          dynamicData.id, 0);
                                                });
                                              }
                                            }
                                          },
                                          child: Icon(Icons.remove))
                                    ],
                                  ),
                                )
                              : InkWell(
                                  onTap: () async {
                                    setState(() {
                                      dynamicData.qty = 1;
                                    });
                                    checkUpdateTable.select_id_update(
                                        dynamicData.id, dynamicData.qty);
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 10, left: 8),
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.blueAccent),
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                          fontFamily: 'RyeFonts',
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
