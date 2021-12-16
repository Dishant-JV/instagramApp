import 'package:flutter/material.dart';

class ChatSearchPress extends StatefulWidget {
  const ChatSearchPress({Key? key}) : super(key: key);

  @override
  _ChatSearchPressState createState() => _ChatSearchPressState();
}

class _ChatSearchPressState extends State<ChatSearchPress> {
  FocusNode chat=FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: TextField(
          style: TextStyle(color: Colors.white),
          focusNode: chat,
          autofocus: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            )
          ),
        ),
      ),
    );
  }
}
