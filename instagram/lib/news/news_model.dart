import 'package:instagram/news/article_model.dart';

class NewsModel{
  String? status;
  String? totalResult;
  List<ArticleModel>? articles;

  NewsModel({this.status,this.totalResult,this.articles});
  NewsModel.fromJson(Map<String,dynamic> json){
    status=json['status'];
    totalResult=json['totalResults'];
    var lst=json['articles'] as List;
    articles=lst.map((e) => ArticleModel.fromJson(e)).toList();
  }
}