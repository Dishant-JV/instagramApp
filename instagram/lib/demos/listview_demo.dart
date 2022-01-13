import 'package:flutter/material.dart';
import 'package:instagram/constants/app_array_list.dart';
import 'package:instagram/models/employee.dart';

class ListviewDemo extends StatelessWidget {
  const ListviewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Employee emp = Employee();

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.builder(
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: AppArrayList.employeeList.length,
            itemBuilder: (context, index) {
              Employee model = AppArrayList.employeeList[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
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
                  SizedBox(height: 5),
                  Container(
                    color: Colors.black,
                    height: 2,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
