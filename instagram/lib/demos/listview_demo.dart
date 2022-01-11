import 'package:flutter/material.dart';
import 'package:instagram/models/employee.dart';

class ListviewDemo extends StatelessWidget {
  const ListviewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> nameList = ["Piyush", "Dishant", "Rakesh", "Ayushi"];

    List<Employee> employeeList = [
      Employee(
        name: "piyush",
        married: true,
        salary: 12333,
      ),
      Employee(name: "Dishant", married: true, salary: 12333),
      Employee(name: "Rakesh", married: true, salary: 12333),
      Employee(name: "Ayushi", married: true, salary: 12333),
      Employee(name: "Ayushi", married: true, salary: 12333),
      Employee(name: "Ayushi", married: true, salary: 12333),
      Employee(name: "Ayushi", married: true, salary: 12333),
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 300,
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: List.generate(
              employeeList.length,
              (index) {
                return Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,shape: BoxShape.circle
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Text(employeeList[index].name ?? ""),
                      Text(employeeList[index].salary.toString()),
                      Text("married : ${employeeList[index].married}"),
                    ],
                  ),
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
