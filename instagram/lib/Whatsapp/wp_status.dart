import 'package:flutter/material.dart';
import 'package:instagram/Whatsapp/wpstatus_img.dart';
import 'package:instagram/constants/wpstatuslist.dart';
import 'package:instagram/models/wpstatusmodel.dart';

class WpStatus extends StatefulWidget {

  const WpStatus({Key? key,}) : super(key: key);

  @override
  _WpStatusState createState() => _WpStatusState();
}

class _WpStatusState extends State<WpStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              backgroundColor:Color(0XFF171f25)
            ),
          ),
          SizedBox(height: 8,),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
            ),
            backgroundColor: Color(0XFF128C7E),
          ),
        ],
      ),
      backgroundColor: Color(0XFF0b1316),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.035,
                    right: MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.127,
                          width: MediaQuery.of(context).size.width * 0.127,
                          child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/demo4.jpg")),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.069,
                              left: MediaQuery.of(context).size.width * 0.072),
                          height: MediaQuery.of(context).size.width * 0.057,
                          width: MediaQuery.of(context).size.width * 0.057,
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.045),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.745,
                            child: Text(
                              "My status",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16.5),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Container(
                            child: Text(
                              "Tap to add status update",
                              style: TextStyle(
                                  color: Color(0XFF5e696f), fontSize: 15),
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
                  top: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Text(
                  "Recent updates",
                  style: TextStyle(
                      color: Color(0XFF5e696f),
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: WpRecentStatusList.recentStatusList.length,
                  itemBuilder: (context, index) {
                    WpRecentStatusModel model =
                        WpRecentStatusList.recentStatusList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WpStatusImg(
                          img: model.sImage,
                          time: model.time,
                          name: model.name,
                        )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(model.sImage.toString()),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 3)),
                                  height:
                                      MediaQuery.of(context).size.width * 0.138,
                                  width:
                                      MediaQuery.of(context).size.width * 0.138,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                  border: Border.all(
                                      color: Colors.white10, width: 1.8),
                                ),
                                height: MediaQuery.of(context).size.width * 0.144,
                                width: MediaQuery.of(context).size.width * 0.144,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.745,
                                    child: Text(
                                      model.name.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 16.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  Container(
                                    child: Text(
                                      model.time.toString(),
                                      style: TextStyle(
                                          color: Color(0XFF5e696f), fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                      color: Color(0XFF5e696f),
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: WpViewedStatusList.viewedStatusList.length,
                  itemBuilder: (context, index) {
                    WpViewedStatusModel model =
                        WpViewedStatusList.viewedStatusList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WpStatusImg(
                          img: model.sImage,
                          time: model.time,
                          name: model.name,
                        )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(model.sImage.toString()),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 3)),
                                  height:
                                      MediaQuery.of(context).size.width * 0.138,
                                  width:
                                      MediaQuery.of(context).size.width * 0.138,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  border: Border.all(
                                      color: Colors.white10, width: 1.8),
                                ),
                                height: MediaQuery.of(context).size.width * 0.144,
                                width: MediaQuery.of(context).size.width * 0.144,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.745,
                                    child: Text(
                                      model.name.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 16.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  Container(
                                    child: Text(
                                      model.time.toString(),
                                      style: TextStyle(
                                          color: Color(0XFF5e696f), fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
