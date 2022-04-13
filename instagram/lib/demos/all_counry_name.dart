import 'dart:async';

import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_saver/files.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';

class AllCountryName extends StatefulWidget {
  const AllCountryName({Key? key}) : super(key: key);

  @override
  _AllCountryNameState createState() => _AllCountryNameState();
}

class _AllCountryNameState extends State<AllCountryName> {
  List<String> capital = [];
  List data = [];
  List<dynamic> allData = [];
  List<String> datas = [];
  String capp = "";
  String? selectedValue;
  bool? onInternet;

  Future getCountry() async {
    final response =
        await http.get(Uri.parse("https://restcountries.com/v3.1/all"),);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception("Error in getting data");
    }
  }

  Future countryDataList() async {
    List<dynamic> lstCountry = await getCountry();
    lstCountry.forEach((element) {
      data.add(element['name']['common']);
    });
     datas = data.cast<String>();
  }

 Future capitalDataList() async {
    List<dynamic> data = await getCapital(selectedValue ?? "");
    data.forEach((element) {
      setState(() {
        capital = element['capital'].cast<String>();
        capp = capital.join("");
        print(capp);
      });
    });
  }

  Future getCapital(String name) async {
    final response =
        await http.get(Uri.parse("https://restcountries.com/v3.1/name/$name"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      setState(() {
        capp = "No DATA";
      });
    }
  }

  void checkConnect() async {
    onInternet = await isInternet();
    setState(() {});
    print(onInternet);
  }

  Future<bool> isInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      if (await DataConnectionChecker().hasConnection) {
        return true;
      } else {
        return false;
      }
    } else if (connectivityResult == ConnectivityResult.wifi) {
      if (await DataConnectionChecker().hasConnection) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryDataList();
    checkConnect();
    print(datas);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onInternet == true
          ? Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    countryDataList();
                  },
                  child: Text(
                    "Select Country",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade100,
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.all(20),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      onTap: () {
                        print("presses");
                      },
                      selectedItemBuilder: (context) {
                        return datas.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              e,
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          );
                        }).toList();
                      },
                      isExpanded: true,
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                      dropdownColor: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      value: selectedValue,
                      items: datas
                          .map((e) => DropdownMenuItem(
                                child: Container(
                                  padding: selectedValue == e
                                      ? EdgeInsets.only(top: 10, bottom: 10)
                                      : null,
                                  color: selectedValue == e
                                      ? Colors.orange.shade100
                                      : Colors.yellow,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(e),
                                      selectedValue == e
                                          ? Icon(Icons.check)
                                          : Container()
                                    ],
                                  ),
                                ),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                          print(selectedValue);
                          capitalDataList();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Get Capital of select Country",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                capp.isEmpty
                    ? Text(
                        "Select Country",
                        style: TextStyle(
                            fontFamily: 'RyeFonts',
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      )
                    : Text(
                        capp,
                        style: TextStyle(
                            fontFamily: 'RyeFonts',
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                      )
              ],
            )
          : Center(
              child: Text(
                "No Internet",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'RyeFonts'),
              ),
            ),
    );
  }
}
