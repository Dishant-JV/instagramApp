import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile/login_language.dart';
import 'package:instagram/profile/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Container(margin: EdgeInsets.only(top: 17,left: 20),child: Text("Phone number, email or username",style: TextStyle(color: Colors.grey.withOpacity(0.9)),)),
                        ),
                        Container(
                            margin: EdgeInsets.only(top:15),
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(margin: EdgeInsets.only(left: 20),child: Text("Password",style: TextStyle(color: Colors.grey.withOpacity(0.9)),)),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.remove_red_eye,color: Colors.grey.withOpacity(0.9),),
                                )
                              ],
                            )
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 15),
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade900.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Container(child: Text("Log In",style: TextStyle(color: Colors.grey),)),
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
                        Container(
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
