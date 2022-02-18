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
        img: "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVyZ2Vyc3xlbnwwfHwwfHw%3D&w=1000&q=80",
        pName: "Burger",
        pDescription: "Burger is a savour dish of Italian origin food ",
        price: "RM 129.0"),
    Drawer3Model(
        img: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/216054.jpg",
        pName: "Pizza",
        pDescription: "Pizza is a savour dish of Italian origin food",
        price: "RM 135.0"),
    Drawer3Model(
        img: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2021%2F06%2F15%2Fmozzarella-pizza-margherita-FT-RECIPE0621.jpg&q=60",
        pName: "Italian Pizza",
        pDescription: "Italian Pizz is a savour dish of Italian origin food",
        price: "RM 145.0"),
    Drawer3Model(
        img: "https://www.indianhealthyrecipes.com/wp-content/uploads/2019/05/club-sandwich-recipe.jpg",
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
        backdropColor: Color(0xffEEEEEE),
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
                color: Color(0xff4C3F35),
                height: 50+MediaQuery.of(context).padding.top,
                padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top ),
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
                          builder: (_, value, __) {
                            return AnimatedSwitcher(
                                child: Icon(
                                  value.visible ? Icons.clear : Icons.menu,
                                  size: 28,
                                  color: Colors.white,
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
                          color: Colors.white,
                          fontSize: 19),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                width: 250,
                height: 45,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
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
                        suffixIcon: Icon(Icons.search,color: Colors.grey,),
                        hintText: "search",
                        hintStyle: TextStyle(fontFamily: "RyeFonts",fontSize: 14),
                        isDense: true,
                        filled: true,
                        fillColor: Colors.white,
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
                        style: TextStyle(
                            fontSize: 20,
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
                                  mainAxisExtent: 230,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 2),
                          itemBuilder: (BuildContext context, index) {
                            return Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                lstMainProduct[index]
                                                    .img
                                                    .toString()),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
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
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
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
        drawer: Container(
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
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
        ));
  }
}
