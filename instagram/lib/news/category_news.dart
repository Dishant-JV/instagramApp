import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:instagram/news/news_model.dart';
import 'package:shimmer/shimmer.dart';

import 'Sourece_model.dart';
import 'article_model.dart';
import 'package:http/http.dart' as http;

class CategoryNews extends StatefulWidget {
  final String? apiKey;
  final String? category;

  const CategoryNews({Key? key, this.apiKey, this.category}) : super(key: key);

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> lstArticle = [];
  SourceModel? sourceModel = SourceModel();
  bool isLoaded=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     FetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:isLoaded==false ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 15,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey.shade200,
              highlightColor: Colors.grey.shade400,
              direction: ShimmerDirection.ltr,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                height: 30,
                width: 200,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade500,
                      direction: ShimmerDirection.ltr,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                          height: 250,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5)),
                    );
                  }),
            ),
          ],
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 15,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "${widget.category} Releated News",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                      color: Color(0xff4C3F35)),
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: lstArticle.length,
                  itemBuilder: (context, index) {
                    ArticleModel data = lstArticle[index];
                    String? date = data.publishedDate?.substring(0, 10);
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: data.imageUrl == null
                                        ? Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(
                                              10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/demo3.jpg'),
                                              fit: BoxFit.cover)),
                                    )
                                        : Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(
                                              10),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  data.imageUrl
                                                      .toString()),
                                              fit: BoxFit.cover)),
                                    )),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Text(
                                            data.title.toString(),
                                            overflow:
                                            TextOverflow.ellipsis,
                                            maxLines: 5,
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w500,
                                                fontSize: 17),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                            data.description == null
                                ? Container()
                                : Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  data.description.toString(),
                                  style: TextStyle(fontSize: 16),
                                )),
                            SizedBox(
                              height: 3,
                            ),
                            data.content == null
                                ? Container()
                                : Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  data.content.toString(),
                                  style: TextStyle(fontSize: 16),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Date : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    date.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        )
    );
  }

   FetchData() async {
    List<ArticleModel> lsts = [];
    final response = await http.get(Uri.parse(widget.apiKey.toString()));
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data['status']);
    if (data['status'] == 'ok') {
      var lst = data['articles'];
      lst.forEach((element) {
        lsts.add(ArticleModel.fromJson(element));
      });
    }
    print(lsts[9].description);
    setState(() {
      lstArticle = lsts;
      isLoaded=true;
    });
  }
}
