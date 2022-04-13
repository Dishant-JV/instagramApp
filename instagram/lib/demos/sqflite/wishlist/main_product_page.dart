import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get.dart';
import 'package:instagram/demos/sqflite/check%20and%20Update%20Quantity/check_update_table.dart';

import 'main_page_product_model.dart';

class MainProductPage extends StatefulWidget {
  const MainProductPage({Key? key}) : super(key: key);

  @override
  _MainProductPageState createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  List<ProductModel> lstProduct = [];
  CheckUpdateTable checkUpdateTable = CheckUpdateTable();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: lstProduct.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 110,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, index) {
                // ProductModel productModels = lstProduct[index];
                return Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        lstProduct[index].pName.toString(),
                        style: TextStyle(fontFamily: 'RyeFonts', fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(lstProduct[index].price.toString(),
                          style:
                              TextStyle(fontFamily: 'RyeFonts', fontSize: 17))
                    ],
                  ),
                );
              })),
    );
  }

  void getData() async {
    var lisy = await checkUpdateTable.wishlist_id_select();
    setState(() {
      lstProduct = lisy;
    });
  }
}
