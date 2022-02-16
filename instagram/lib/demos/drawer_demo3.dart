import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:instagram/models/drawer3_model.dart';

class DrawerDemo3 extends StatefulWidget {
  const DrawerDemo3({Key? key}) : super(key: key);

  @override
  _DrawerDemo3State createState() => _DrawerDemo3State();
}

class _DrawerDemo3State extends State<DrawerDemo3> {
  final _advancedDrawerController = AdvancedDrawerController();
  String lowerSearchText = "";
  String lowerOrgText = "";
  List<Drawer3Model> lstProduct = [
    Drawer3Model(
        img: "assets/images/demo4.jpg",
        pName: "Burger",
        pDescription: "Burger is a savour dish of Italian origin food",
        price: "RM 129.0"),
    Drawer3Model(
        img: "assets/images/demo5.jpg",
        pName: "Pizza",
        pDescription: "Pizza is a savour dish of Italian origin food",
        price: "RM 135.0"),
    Drawer3Model(
        img: "assets/images/demo6.jpg",
        pName: "Italian Pizza",
        pDescription: "Italian Pizz is a savour dish of Italian origin food",
        price: "RM 145.0"),
    Drawer3Model(
        img: "assets/images/demo7.jpg",
        pName: "Sandwich",
        pDescription: "Sandwich is a savour dish of Italian origin food",
        price: "RM 100.0"),
  ];
  List<Drawer3Model> lstMainProduct = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lstMainProduct = lstProduct;
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: Colors.white.withOpacity(0.9),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                color: Colors.grey,
                height: 80,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    IconButton(
                        onPressed: () {
                          _advancedDrawerController.showDrawer();
                        },
                        icon: ValueListenableBuilder<AdvancedDrawerValue>(
                          valueListenable: _advancedDrawerController,
                          builder: (ss, value,k) {
                            return AnimatedSwitcher(
                                child: Icon(
                                  value.visible ? Icons.clear : Icons.menu,
                                  size: 28,
                                ),
                                duration: Duration(milliseconds: 250));
                          },
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.28,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: 'RyeFonts',
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 250,
                height: 45,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      lstMainProduct = lstProduct.where((e) {
                        lowerSearchText = value.toLowerCase();
                        lowerOrgText = e.pName!.toLowerCase();
                        return lowerOrgText.contains(lowerSearchText);
                      }).toList();
                    });
                  },
                  cursorColor: Colors.black,
                  cursorHeight: 20,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 2, left: 10),
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.black,
                      hintText: "search",
                      hintStyle: TextStyle(fontFamily: "RyeFonts"),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              lstMainProduct.length == 0
                  ? Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 500,
                      child: Text(
                        "No Data Found",
                        style: TextStyle(fontSize: 20,
                            fontFamily: "RyeFonts",
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: GridView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: lstMainProduct.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 220,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 2),
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                lstMainProduct[index]
                                                    .img
                                                    .toString()),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            topLeft: Radius.circular(15))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 8),
                                    child: Text(
                                      lstMainProduct[index].pName.toString(),
                                      style: TextStyle(
                                          fontFamily: "RyeFonts",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 8),
                                    child: Text(
                                      lstMainProduct[index]
                                          .pDescription
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.8),
                                          fontFamily: "RyeFonts",
                                          fontSize: 11),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20, left: 8),
                                    child: Text(
                                      lstMainProduct[index].price.toString(),
                                      style: TextStyle(
                                          fontFamily: "RyeFonts",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.5),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
            ],
          ),
        ),
        drawer: SafeArea(
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/demo3.jpg"),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Dishant Vaghasiya",
                      style: TextStyle(fontFamily: "RyeFonts", fontSize: 13),
                    ),
                    Text(
                      "dihsantvaghsiya8171@gmail.com",
                      style: TextStyle(fontFamily: "RyeFonts", fontSize: 13),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.63,
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_rounded,
                            size: 32,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Profile",
                            style:
                                TextStyle(fontFamily: "RyeFonts", fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.63,
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 32,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Home",
                            style:
                                TextStyle(fontFamily: "RyeFonts", fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.63,
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 32,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Cart",
                            style:
                                TextStyle(fontFamily: "RyeFonts", fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.63,
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            size: 32,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Logout",
                            style:
                                TextStyle(fontFamily: "RyeFonts", fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
