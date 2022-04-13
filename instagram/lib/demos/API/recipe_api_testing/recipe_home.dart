import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/demos/API/recipe_api_testing/RecipeModel.dart';

class RecipeHome extends StatefulWidget {
  const RecipeHome({Key? key}) : super(key: key);

  @override
  _RecipeHomeState createState() => _RecipeHomeState();
}

class _RecipeHomeState extends State<RecipeHome> {
  String token =
      "23f4204afeb642383b8849353578d8ebdeaac8bc7dcfb7bf0f9d6c44e5b302c4";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostData();
  }

  List<Data> lstRecipeData = [];
  bool isLoad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_outlined,
                    size: 33,
                    color: Colors.green.shade500,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    child: Text(
                      "What do you want to coock today?",
                      style: TextStyle(
                          height: 1,
                          fontFamily: 'Josefin',
                          fontSize: 19,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Icon(Icons.search_sharp,
                      size: 33, color: Colors.green.shade500)
                ],
              ),
            ),
            isLoad == true
                ? Expanded(
                    child: ListView.builder(
                      itemCount: lstRecipeData.length,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        Data data = lstRecipeData[index];
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                    child: Container(
                                        width: double.infinity,
                                        height: 170,
                                        child: CachedNetworkImage(
                                          imageUrl: data.image.toString(),
                                          fit: BoxFit.cover,
                                          placeholder: (context, url) => Center(
                                              child: CircularProgressIndicator(
                                            color: Colors.green,
                                          )),
                                        )),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(
                                                top: 18, bottom: 17),
                                            child: Text(
                                              data.name.toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Josefin',
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.red,
                                            size: 13,
                                          ),
                                          margin: EdgeInsets.only(top: 5),
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.red, width: 2)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Icon(
                                          Icons.watch_later_outlined,
                                          color: Colors.green.shade500,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        data.totalTime.toString(),
                                        style: TextStyle(
                                            fontFamily: 'Josefin',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.grey.shade800),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "\$",
                                          style: TextStyle(
                                              color: Colors.green.shade500,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.green.shade500,
                                                width: 2)),
                                      ),
                                      Text(
                                        data.serving.toString(),
                                        style: TextStyle(
                                            fontFamily: 'Josefin',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.grey.shade800),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 14,
                                        right: 12,
                                        top: 20,
                                        bottom: 10),
                                    child: Text(
                                      data.description.toString(),
                                      maxLines: 3,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontFamily: 'Josefin',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey.shade600,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Divider(
                                        color: Colors.grey.shade500,
                                        thickness: 0.6,
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 10,
                                        right: 15,
                                        left: 15,
                                        bottom: 22),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.16,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(data
                                                      .userProfile
                                                      .toString()))),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Receipe by ",
                                                    style: TextStyle(
                                                        fontFamily: 'Josefin',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    data.userName.toString(),
                                                    style: TextStyle(
                                                        fontFamily: 'Josefin',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 16,
                                                        color: Colors.red),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                height: 35,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            data.totalRecipe
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15),
                                                          ),
                                                          Text(
                                                            "My Recipe",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Josefin',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              right:
                                                                  BorderSide())),
                                                    )),
                                                    Expanded(
                                                        child: Container(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            data.notify
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15),
                                                          ),
                                                          Text(
                                                            "Favorite",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Josefin',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              right:
                                                                  BorderSide())),
                                                    )),
                                                    Expanded(
                                                        child: Container(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            data.totalFollowers
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15),
                                                          ),
                                                          Text(
                                                            "Followers",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Josefin',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              right:
                                                                  BorderSide())),
                                                    ))
                                                  ],
                                                ),
                                              )
                                            ],
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
                      },
                    ),
                  )
                : Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          color: Colors.green.shade500,
                        )),
                  )
          ],
        ),
      ),
    );
  }

  void getData() async {
    final response = await http.get(
        Uri.parse("https://ncpdpc.com/product/recipeking/api/listofrecipe"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List<dynamic> lstData = data['recipelist']['data'];
      try {
        lstData.forEach((element) {
          setState(() {
            lstRecipeData.add(Data.fromJson(element));
            isLoad = true;
          });
        });
      } catch (e) {}
    }
  }

  void getPostData() async {
    final response =
        await http.post(Uri.parse("https://gorest.co.in/public/v2/users"),
            body: jsonEncode({
              "name": "greps",
              "gender": "male",
              "email": "greps123@gmail.com",
              "status": "active"
            }),
            headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
        });
    print(response.statusCode);
    print(response.body);
  }
}
