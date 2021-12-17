
import 'package:flutter/material.dart';

import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool empty=true;
  TextEditingController phone=TextEditingController();
  TextEditingController email =TextEditingController();
  final isPhone = GlobalKey<FormState>();
  @override
  int index = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 155),
                          height: 185,
                          width: 185,
                          child: Image.asset(
                            "assets/images/profile.png",
                            color: Colors.white70,
                            fit: BoxFit.cover,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey.withOpacity(0.6)))),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: index == 0
                                  ? Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      alignment: Alignment.center,
                                      width: 176,
                                      child: Text(
                                        "Phone",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    )
                                  : Container(
                                      alignment: Alignment.center,
                                      width: 176,
                                      child: Text(
                                        "Phone",
                                        style: TextStyle(
                                            color: Colors.grey.withOpacity(0.9),
                                            fontSize: 16),
                                      ),
                                    ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: index == 1
                                  ? Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      alignment: Alignment.center,
                                      width: 176,
                                      child: Text(
                                        "Email",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    )
                                  : Container(
                                      alignment: Alignment.center,
                                      width: 176,
                                      child: Text(
                                        "Email",
                                        style: TextStyle(
                                            color: Colors.grey.withOpacity(0.9),
                                            fontSize: 16),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                      index == 0
                          ? Form(
                            key: isPhone,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 16),
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: TextFormField(
                                    validator: (value){
                                      setState(() {

                                      });
                                    },
                                    onChanged: (value){
                                      setState(() {
                                        phone.text.isEmpty == true ? empty =true : empty =false;
                                      });
                                    },
                                    controller: phone,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "Phone",
                                      hintStyle: TextStyle(
                                          color: Colors.white54, fontSize: 16),
                                      filled: true,
                                      fillColor:
                                      Colors.grey.shade800.withOpacity(0.6),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                      border:
                                      OutlineInputBorder(), //contentPadding: EdgeInsets.only(top: 6,bottom: 6,),
                                    ),
                                  ),
                                ),
                                empty == true ?
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 15),
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color:Colors.blue.shade900.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Container(
                                      child: Text(
                                        "Next",
                                        style: TextStyle(color: Colors.grey),
                                      )),
                                ) : InkWell(
                                  onTap: (){
                                    isPhone.currentState!.validate();
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color:Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Container(
                                        child: Text(
                                          "Next",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                )
                              ],
                            )
                          )
                          : Container(
                              margin: EdgeInsets.only(top: 16),
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Container(
                                  margin: EdgeInsets.only(top: 17, left: 20),
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(0.9)),
                                  )),
                            ),

                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Colors.grey.withOpacity(0.2)))),
                      child: RichText(
                        text: TextSpan(
                            text: ("Already have an account?  "),
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.8),
                                fontSize: 13),
                            children: [
                              TextSpan(
                                  text: ("Login"),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13))
                            ]),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
