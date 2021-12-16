import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ChatSearchPress extends StatefulWidget {

  const ChatSearchPress({Key? key,}) : super(key: key);

  @override
  _ChatSearchPressState createState() => _ChatSearchPressState();
}

class _ChatSearchPressState extends State<ChatSearchPress> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context)=>Chat()));

              },
              child: Container(
                child: Icon(Icons.arrow_back,color: Colors.white,size: 27,),
              ),
            ),
            Container(
              width: 350,
              child: TextField(
                style: TextStyle(color: Colors.white),
                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                    )
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
