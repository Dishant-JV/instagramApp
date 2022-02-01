import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';

class DropdownButtonDemo extends StatefulWidget {
  const DropdownButtonDemo({Key? key}) : super(key: key);

  @override
  _DropdownButtonDemoState createState() => _DropdownButtonDemoState();
}

class _DropdownButtonDemoState extends State<DropdownButtonDemo> {
  List nameList = [
    // {'label':'apple'},
    // {'label':'banana'},
    // {'label':'kiwi'},
    // {'label':'grape'},
    // {'label':'mkm',},
    // {'label':'plp',},
    "rfd", "Sdfsdf", "sdd", "sdsd"
  ];
  String? selectedValue;
  List get = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child:CoolDropdown(
        //     dropdownBD :BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.pink.withOpacity(0.1),
        //           spreadRadius: 1,
        //           blurRadius: 10,
        //           offset: Offset(0, 1),
        //         ),
        //       ],
        //     ),
        //   resultPadding:  EdgeInsets.only(left: 15, right: 15),
        //  resultTS: TextStyle(color: Colors.blue,fontSize: 22),
        //   resultBD: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(10),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.pink.withOpacity(0.1),
        //         spreadRadius: 1,
        //         blurRadius: 10,
        //         offset: Offset(0, 1),
        //       ),
        //     ],
        //   ),
        //   gap:20,
        //    dropdownItemAlign: Alignment.bottomCenter,
        //   placeholder: "select",
        //   dropdownList: nameList,
        //   onChange: (a){
        //       print(a['label']);
        //     // get.add(a);
        //     // print(get);
        //   },
        // )
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.all(20),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              selectedItemBuilder: (context) {
                return nameList.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      e,
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                }).toList();
              },
              isExpanded: true,
              style: TextStyle(color: Colors.blue, fontSize: 20),
              onTap: () {
                print("tapped");
              },
              dropdownColor: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
              value: selectedValue,
              items: nameList
                  .map((e) => DropdownMenuItem(
                        child: Container(
                          padding: selectedValue == e
                              ? EdgeInsets.only(top: 10, bottom: 10)
                              : null,
                          color: selectedValue == e
                              ? Colors.orange.shade100
                              : Colors.yellow,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
