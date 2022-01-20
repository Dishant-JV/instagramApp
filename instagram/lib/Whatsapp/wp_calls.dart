import 'package:flutter/material.dart';
import 'package:instagram/constants/wpcalls_list.dart';
import 'package:instagram/models/wpcalls.dart';


class WpCalls extends StatefulWidget {
  const WpCalls({Key? key}) : super(key: key);

  @override
  _WpCallsState createState() => _WpCallsState();
}

class _WpCallsState extends State<WpCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_call,color: Colors.white,),
        backgroundColor: Color(0XFF128C7E),
        onPressed: (){},
      ),
      backgroundColor: Color(0XFF0b1316),
      body: Container(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: WpCallsList.callsList.length,
                itemBuilder: (context, index) {
             WpCallsModel model=WpCallsList.callsList[index];
                  return Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * 0.02,
                        top: MediaQuery.of(context).size.width * 0.055,
                        left: MediaQuery.of(context).size.width * 0.04,
                        right: MediaQuery.of(context).size.width * 0.04),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(WpCallsList.callsList[index].img.toString()),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                ),
                                height:
                                    MediaQuery.of(context).size.width * 0.13,
                                width: MediaQuery.of(context).size.width * 0.13,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.045),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      model.name.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 17.5),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.015,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            model.rIcons,
                                            color:  model.rIcons == Icons.call_made ? Colors.green : Colors.red,
                                            size: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Text(
                                            model.time.toString(),
                                            style: TextStyle(
                                                color: Color(0XFF5e696f),
                                                fontSize: 15.5),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Icon(
                            model.vIcons,
                            color: Color(0XFF128C7E),
                          ),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
