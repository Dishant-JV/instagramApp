import 'package:instagram/news/Sourece_model.dart';

class ArticleModel {
  SourceModel? sourceModel;
  String? author;
  String? title;
  String? description;
  String? newsUrl;
  String? imageUrl;
  String? publishedDate;
  String? content;

  ArticleModel(
      {this.sourceModel, this.author, this.title, this.description, this.newsUrl, this.imageUrl, this.publishedDate, this.content});
  ArticleModel.fromJson(Map<String,dynamic> json){
    sourceModel=SourceModel.fromJson(json['source']);
    author=json['author'];
    title=json['title'];
    description=json['description'];
    newsUrl=json['url'];
    imageUrl=json['urlToImage'];
    publishedDate=json['publishedAt'];
    content=json['content'];
  }


}