import 'package:flutter/material.dart';

class GridviewSelectiondemo extends StatefulWidget {
  const GridviewSelectiondemo({Key? key}) : super(key: key);

  @override
  _GridviewSelectiondemoState createState() => _GridviewSelectiondemoState();
}

class _GridviewSelectiondemoState extends State<GridviewSelectiondemo> {
  List<List<String>> items = [
    ['1', '2', '3', '4', '5'],
    ['6', '7', '8', '9', '10'],
    ['11', '12', '13', '14', '15'],
    ['16', '17', '18', '19', '20'],
    ['21', '22', '23', '24', '25'],
  ];
  bool isSelected = false;
  int? checkedIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) {
              return Row(
                children: <Widget>[
                  for (int i = 0; i <= items.length; i++)
                    Container(
                      child: Text(items[index][i]),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                    )
                ],
              );
            }),
      ),
    );
  }
}
