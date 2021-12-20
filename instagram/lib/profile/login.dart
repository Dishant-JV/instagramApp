import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile/login_language.dart';
import 'package:instagram/profile/signup.dart';

import '../main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isemptymail=true;
  bool isemptypass=true;
  FocusNode pass=FocusNode();
  final isemail=GlobalKey<FormState>();
  final search=GlobalKey<FormState>();
  bool ispassvisible=false;
  TextEditingController email=TextEditingController();
  TextEditingController passcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Container(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  showModalBottomSheet(isScrollControlled: true,context: context, builder: (BuildContext bc){
                                    return Language();
                                  }
                                  );
                                },
                                child: Container(
                                  child: Text("English (India)",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 15),),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down,color: Colors.grey.withOpacity(0.8),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 200),
                          height: 70,
                          width: 190,
                          child: Image.asset("assets/images/insta_text.png",color: Colors.white,),
                        ),
                        Form(
                            key: isemail,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 16),
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: TextFormField(
                                    onFieldSubmitted: (value){
                                      setState(() {
                                        FocusScope.of(context).requestFocus(pass);
                                      });
                                    },
                                    onChanged: (value){
                                      setState(() {
                                        email.text.isEmpty == true ? isemptymail = true : isemptymail=false;
                                      });
                                    },
                                    validator: (value){
                                      if(value!.length != 10){
                                        return 'plzz enter valid mobile number';
                                      }
                                    },
                                    controller: email,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "Phone number, email or username",
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
                                Container(
                                  margin: EdgeInsets.only(top:12 ),
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                  child: TextFormField(
                                    onChanged: (value){
                                      setState(() {
                                        passcontroller.text.isEmpty== true ? isemptypass=true :isemptypass=false;
                                      });
                                    },
                                    onFieldSubmitted: (value){
                                      setState(() {
                                        if(isemail.currentState!.validate()){
                                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Insta()), (route) => false);
                                        }
                                      });
                                    },
                                    style: TextStyle(color: Colors.white),
                                    controller: passcontroller,
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
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                      filled: true,
                                      fillColor:
                                      Colors.grey.shade800.withOpacity(0.6),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                      border:
                                      OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                isemptymail == true || isemptypass == true ?
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
                                    if(isemail.currentState!.validate()){
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Insta()), (route) => false);
                                    }
                                  },
                                  child: Container(
                                    key: search,
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
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 15),
                            child: RichText(
                              text: TextSpan(
                                  text: ("Forget your login details? "),
                                  style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 13),
                                  children: [
                                    TextSpan(
                                        text: ("Get help loggin in."),
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13)
                                    )
                                  ]
                              ),
                            )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text("OR",style: TextStyle(color: Colors.grey.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 17),),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Insta()), (route) => false);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 15),
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Container(child: Text("Continue as Dishant Vaghasiya",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))
                        ),
                        child: RichText(
                          text: TextSpan(
                              text: ("Don't have an account?  "),
                              style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 13),
                              children: [
                                TextSpan(
                                    text: ("Sign up."),
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13)
                                )
                              ]
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
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
