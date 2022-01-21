import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Whatsapp/wp_person_chat.dart';
import 'package:instagram/constants/wpchat_list.dart';
import 'package:instagram/models/wpchatmodel.dart';

class WpChat extends StatefulWidget {
  const WpChat({Key? key}) : super(key: key);

  @override
  _WpChatState createState() => _WpChatState();
}

class _WpChatState extends State<WpChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat, color: Colors.white,),
        backgroundColor: Color(0XFF128C7E),
        onPressed: () {},
      ),
      backgroundColor: Color(0XFF0b1316),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ChatList.chatList.length,
                  itemBuilder: (context, index) {
                    WpChatModel model = ChatList.chatList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>
                                WpPersonChat(
                                  name: model.name, img: model.pImage,)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: MediaQuery
                                .of(context)
                                .size
                                .width * 0.02,
                            top: MediaQuery
                                .of(context)
                                .size
                                .width * 0.045,
                            left: MediaQuery
                                .of(context)
                                .size
                                .width * 0.04,
                            right: MediaQuery
                                .of(context)
                                .size
                                .width * 0.04),
                        child: Row(
                          children: [
                            ClipOval(
                              child: CachedNetworkImage(
                                placeholder:(context,url)=> CircularProgressIndicator(),
                                fit: BoxFit.cover,
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.127,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.127,
                                  imageUrl: model.pImage.toString()),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.045),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                    MediaQuery
                                        .of(context)
                                        .size
                                        .width * 0.745,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          model.name.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 17.5),
                                        ),
                                        Text(
                                          model.time.toString(),
                                          style: TextStyle(
                                            color: Color(0XFF5e696f),
                                            fontSize: 12.5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                    MediaQuery
                                        .of(context)
                                        .size
                                        .width * 0.01,
                                  ),
                                  Container(
                                    child: Text(
                                      model.chat.toString(),
                                      style: TextStyle(
                                          color: Color(0XFF5e696f),
                                          fontSize: 15.5),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
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
