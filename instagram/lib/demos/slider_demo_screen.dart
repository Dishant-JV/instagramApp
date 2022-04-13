import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderDemoScreen extends StatefulWidget {
  const SliderDemoScreen({Key? key}) : super(key: key);

  @override
  _SliderDemoScreenState createState() => _SliderDemoScreenState();
}

class _SliderDemoScreenState extends State<SliderDemoScreen> {
  double selectedValue = 0;
  int selected = 0;
  double a = 0;
  double b = 2000;
  List<int> price = [
    12,
    146,
    1099,
    1254,
    478,
    699,
    789,
    521,
    311,
    112,
    400,
    85,
    999,
    1587,
    1664,
    1999,
    789,
    720,
    1299,
    1678,
    1300
  ];
  List<int> lst = [];

  applyFilter(var start, var end) {
    lst.clear();
    price.forEach((element) {
      if(element>start && element<end){
        setState(() {
          lst.add(element);
        });
      }
    });
    print(lst);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lst.addAll(price);
  }

  @override
  Widget build(BuildContext context) {
    RangeValues values = RangeValues(a, b);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            RangeSlider(
              onChanged: (value) {
                setState(() {
                  a = value.start;
                  b = value.end;
                });
              },
              values: values,
              min: 0,
              max: 2000,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(a.toInt().toString()),
                    Text("  to   "),
                    Text(b.toInt().toString())
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      applyFilter(a, b);
                    },
                    child: Text("Filter"))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: lst.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 150,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Text(
                        lst[index].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
