import 'package:flutter/material.dart';

class SliderDemoScreen extends StatefulWidget {
  const SliderDemoScreen({Key? key}) : super(key: key);

  @override
  _SliderDemoScreenState createState() => _SliderDemoScreenState();
}

class _SliderDemoScreenState extends State<SliderDemoScreen> {
  double selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SliderTheme(
                data: SliderThemeData(
                  overlayColor: Colors.transparent,
                  thumbShape: SliderComponentShape.noOverlay,
                  overlayShape: SliderComponentShape.noThumb,
                  activeTrackColor: Colors.red,
                  inactiveTrackColor:Colors.grey.shade300,
                  trackHeight: 80,
                  thumbColor: Colors.orange,
                ),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    width: 300,
                    child: Slider(
                      value: selectedValue,
                      max: 100,
                      min: 0,
                      //divisions: 100,
                      //label: selectedValue.toInt().toString(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Text(selectedValue.toInt().toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          )
        ),
      ),
    );
  }
}
