import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/profile/settings.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.all(50),
        color: Colors.grey.withOpacity(0.3),
        height: 800,
        width: double.infinity,
        padding: EdgeInsets.only(top:15),
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  child:  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("SELECT YOUR LANGUAGE",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                    ))
                  ),
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 20),
                      child: Text("English",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 30),
                      child: Text("Afrikaans",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 30),
                      child: Text("Bahasa Melayu",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Malay",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Bahasa Indonesia",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Indonesian",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Dansk",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Danish",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Deutsch",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("German",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Espanol",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Spanish (Latin America)",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Espanol (Espana)",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Spanish (Spain)",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Francais (Canada)",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("French (Canada)",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Francais (France)",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("French (France)",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Hrvatsik",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Crotian",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Magyar",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3),
                      child: Text("Hungarian",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 25),
                      child: Text("Francais (Canada)",style: TextStyle(color: Colors.white,fontSize: 17,),),
                    )
                ),
                Container(
                    child:  Container(
                      margin: EdgeInsets.only(left: 30,top: 3,bottom: 25),
                      child: Text("French (Canada)",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
