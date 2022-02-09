import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/models/drawer_model.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DrawerModel> nameList = [
      DrawerModel(icons: Icons.group, name: "New Group"),
      DrawerModel(icons: Icons.person, name: "Contacts"),
      DrawerModel(icons: Icons.call, name: "Calls"),
      DrawerModel(icons: Icons.emoji_people_sharp, name: "People nearby"),
      DrawerModel(icons: Icons.bookmark_outline, name: "Saved message"),
      DrawerModel(icons: Icons.settings, name: "Settings"),
    ];
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("hello")),
        drawer: Drawer(
          backgroundColor: Colors.black12,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey.shade500),
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage("assets/images/demo3.jpg"),
                            ),
                            Icon(
                              Icons.brightness_high_outlined,
                              size: 30,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dishant Vaghasiya",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "+91 8511510103",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 15),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: nameList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20, right: 40),
                              child: Icon(
                                nameList[index].icons,
                                color: Colors.blue,
                                size: 26,
                              )),
                          Text(
                            nameList[index].name.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 19),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
