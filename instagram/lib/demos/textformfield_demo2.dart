import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/demos/show_email_pass.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class TextfielformdDemo2 extends StatefulWidget {
  const TextfielformdDemo2({Key? key}) : super(key: key);

  @override
  _TextfielformdDemo2State createState() => _TextfielformdDemo2State();
}

class _TextfielformdDemo2State extends State<TextfielformdDemo2> {
  final demos = GlobalKey<FormState>();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passcontroller = new TextEditingController();
  FocusNode email = FocusNode();
  FocusNode pass = FocusNode();
  bool ispassvisible=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Form(
          key: demos,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailcontroller,
                    focusNode: email,
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value ?? "");
                      if (!emailValid) {
                        return "plzz enter valid email";
                      }
                    },
                    textInputAction: TextInputAction.go,
                    onEditingComplete: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(pass);
                      });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.grey),
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.blueGrey)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: passcontroller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                   validator: (value){
                     bool passtrue=RegExp(r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value ?? "");
                     if(value!.length < 8){
                       return "length must be at least 8 character";
                     } else if(!passtrue){
                       return "characte,word,num required";
                     }
                   },
                    focusNode: pass,
                    obscureText: ispassvisible== true ? false : true,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            ispassvisible =!ispassvisible;
                          });
                        },
                        icon:ispassvisible ? Icon(Icons.visibility,color: Colors.grey,) : Icon(Icons.visibility_off,color: Colors.grey,),
                      ),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.blueGrey)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
                Container(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      if (demos.currentState!.validate()) {
                        FocusScope.of(context).unfocus();
                      }
                      Navigator.push(context,SwipeablePageRoute(builder: (context)=>Show(
                        name: emailcontroller.text,
                        password: passcontroller.text,
                      )));
                    },
                    child: Text("Save"),
                  ),
                ),
                Text(emailcontroller.text),
                Text(passcontroller.text)
              ],
            ),
          ),
        )),
      ),
    );
  }
}
