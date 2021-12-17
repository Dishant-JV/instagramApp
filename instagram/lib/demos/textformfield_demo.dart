import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextformfieldDemo extends StatefulWidget {
  const TextformfieldDemo({Key? key}) : super(key: key);

  @override
  _TextformfieldDemoState createState() => _TextformfieldDemoState();
}

class _TextformfieldDemoState extends State<TextformfieldDemo> {
  String _value = "";
  final keys = GlobalKey<FormState>();
  FocusNode emailNode = FocusNode();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: keys,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.search,
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textCapitalization: TextCapitalization.sentences,
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value ?? "");
                      if (emailController.text.isEmpty) {
                        return "invalid email che";
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                        print(_value);
                      });
                    },
                    focusNode: emailNode,
                    decoration: InputDecoration(
                      labelText: "search",
                      fillColor: Colors.green,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (keys.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                      child: Text("save"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
