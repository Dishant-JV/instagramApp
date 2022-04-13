import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/news/Sourece_model.dart';
import 'package:instagram/news/article_model.dart';
import 'package:instagram/news/category_news.dart';
import 'package:instagram/news/news_model.dart';

class NewsHome extends StatefulWidget {
  const NewsHome({Key? key}) : super(key: key);

  @override
  _NewsHomeState createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  List category=['Business','Entertainment','Health','Science','Sports','Technology'];
  List apiList=["https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=18a79cbf072545799dd9c37ca2510b35",
    "https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=18a79cbf072545799dd9c37ca2510b35",
    "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=18a79cbf072545799dd9c37ca2510b35",
    "https://newsapi.org/v2/top-headlines?country=in&category=science&apiKey=18a79cbf072545799dd9c37ca2510b35",
    "https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=18a79cbf072545799dd9c37ca2510b35",
    "https://newsapi.org/v2/top-headlines?country=in&category=technology&apiKey=18a79cbf072545799dd9c37ca2510b35"
  ];
  List<ArticleModel> lstArticle = [];
  SourceModel? sourceModel = SourceModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top+20,),
          Text("News",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.grey.shade900,fontSize: 28),),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20),
            child: ListView.builder(padding: EdgeInsets.zero,shrinkWrap: true,itemCount: category.length,itemBuilder: (context,index){
             return Card(
               elevation: 5,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
               ),
               margin: EdgeInsets.only(top: 30),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(apiKey: apiList[index],category: category[index],)));
                 },
                 child: Container(
                   alignment: Alignment.center,
                   height: 50,
                   width: double.infinity,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color:  Color(0xffEEEEEE)
                   ),
                   child: Text(category[index],style: TextStyle(color: Color(0xff6e5847),fontWeight: FontWeight.w500,fontSize: 18),),
                 ),
               ),
             );
            })
          ),
        ],
      ),
    );
  }
}
