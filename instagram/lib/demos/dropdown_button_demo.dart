import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';

class DropdownButtonDemo extends StatefulWidget {
  const DropdownButtonDemo({Key? key}) : super(key: key);

  @override
  _DropdownButtonDemoState createState() => _DropdownButtonDemoState();
}

class _DropdownButtonDemoState extends State<DropdownButtonDemo> {
  List nameList = ["dishant", "rajnik", "Denyy", "Fenil"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:CoolDropdown(
          dropdownList: nameList,
          onChange: (value){
            setState(() {
              selectedValue=value;
            });
          },
        )
        // child: Container(
        //   width: 200,
        //   decoration: BoxDecoration(color: Colors.yellow.shade100),
        //   margin: EdgeInsets.all(20),
        //   child: DropdownButtonHideUnderline(
        //     child: DropdownButton(
        //       selectedItemBuilder: (context) {
        //         return nameList.map((e) {
        //           return Padding(
        //             padding: const EdgeInsets.all(10),
        //             child: Text(
        //               e,
        //               style: TextStyle(color: Colors.red),
        //             ),
        //           );
        //         }).toList();
        //       },
        //       isExpanded: true,
        //       style: TextStyle(color: Colors.blue, fontSize: 20),
        //       onTap: () {
        //         print("tapped");
        //       },
        //       dropdownColor: Colors.yellow,
        //       borderRadius: BorderRadius.circular(10),
        //       value: selectedValue,
        //       items: nameList
        //           .map(
        //             (String e) => DropdownMenuItem(
        //               child: Container(
        //                 padding: selectedValue == e ? EdgeInsets.only(top: 10,bottom: 10) :null,
        //                 color: selectedValue == e
        //                     ? Colors.orange.shade100
        //                     : Colors.yellow,
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Text(e),
        //                     selectedValue == e
        //                         ? Icon(Icons.check)
        //                         : Container()
        //                   ],
        //                 ),
        //               ),
        //               value: e,
        //             ),
        //           )
        //           .toList(),
        //       onChanged: (value) {
        //         setState(() {
        //           selectedValue = value as String;
        //         });
        //       },
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
