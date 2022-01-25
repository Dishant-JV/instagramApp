import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants/app_array_list.dart';
import 'package:instagram/models/employee.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  String mm ="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: AppArrayList.employeeList.length,
                itemBuilder: (BuildContext context, index) {
                  Employee model = AppArrayList.employeeList[index];
                  return InkWell(
                    onTap: (){
                      setState(() {
                        mm=model.name??"";
                      });
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Text(model.name ?? ""),
                          Text(model.salary.toString()),
                          Text("married : ${model.married}"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 100,),
            InkWell(
              onTap: (){
              },
              child: Container(
                child: Text(mm),
              ),
            )
          ],
        ),
      ),
    );
  }
}

