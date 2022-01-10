import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/models/employee.dart';

class ModelDemo extends StatefulWidget {
  const ModelDemo({Key? key}) : super(key: key);

  @override
  _ModelDemoState createState() => _ModelDemoState();
}

class _ModelDemoState extends State<ModelDemo> {
  Employee employee = Employee(list: []);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: employee.list?.length,
                  itemBuilder: (BuildContext context, index) {
                    return Text(employee.list![index]);
                  }),
              Text(employee.name ?? ""),
              Text((employee.salary ?? "").toString()),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Married : "),
                  Switch(
                      value: employee.married ?? false, onChanged: (value) {}),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      employee = Employee(
                          name: "tilak",
                          salary: 12999,
                          married: true,
                          list: ['rajnik']);
                    });
                  },
                  child: Text("Dishant")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      employee = Employee(
                          name: "piyush",
                          salary: 11099,
                          married: false,
                          list: ['a', 'b']);
                    });
                  },
                  child: Text("Piyush")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      employee = Employee(
                          name: "Ayushi",
                          salary: 17999,
                          married: true,
                          list: ['c', 'd', 'sd', 'sd', 'df']);
                    });
                  },
                  child: Text("Ayushi")),
            ],
          ),
        ),
      ),
    );
  }
}
