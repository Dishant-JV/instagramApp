import 'package:flutter/material.dart';

import '../main.dart';

class SignupPassword extends StatefulWidget {
  const SignupPassword({Key? key}) : super(key: key);

  @override
  _SignupPasswordState createState() => _SignupPasswordState();
}

class _SignupPasswordState extends State<SignupPassword> {
  bool empty = true;
  final isPassword=GlobalKey<FormState>();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 155),
                  height: 185,
                  width: 185,
                  child: Image.asset(
                    "assets/images/profile.png",
                    color: Colors.white70,
                    fit: BoxFit.cover,
                  )),
              Form(
                key: isPassword,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        validator: (value){
                          bool passtrue=RegExp(r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value ?? "");
                          if(value!.length < 8){
                            return "length must be at least 8 character";
                          } else if(!passtrue){
                            return "characte,word,num required";
                          }
                        },
                        onChanged: (value){
                          setState(() {
                            password.text.isEmpty == true ? empty =true : empty =false;
                          });
                        },
                        controller: password,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Password",
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
                        if(isPassword.currentState!.validate()){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Insta()), (route) => false);
                        }
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
