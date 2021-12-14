import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateDemo extends StatefulWidget {
  const StateDemo({Key? key}) : super(key: key);

  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 2;
    });
  }
  void _setRatingAsTwo() {
    setState(() {
      _rating = 3;
    });
  }
  void _setRatingAsThree() {
    setState(() {
      _rating = 4;
    });
  }
  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: (
                    _rating >= 2?
                    InkWell(
                      onTap: (){
                        setState(() {
                          _rating=0;
                        });
                      },
                      child: Icon(
                        Icons.star,
                        size: _size,
                      ),
                    )
                        : Icon(
                      Icons.star_border,
                      size: _size,
                    )
                ),
                color: Colors.red[500],
                onPressed: _setRatingAsOne,
                iconSize: _size,
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: (
                    _rating >= 3?
                    Icon(
                      Icons.star,
                      size: _size,
                    )
                        : Icon(
                      Icons.star_border,
                      size: _size,
                    )
                ),
                color: Colors.red[500],
                onPressed: _setRatingAsTwo,
                iconSize: _size,
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: (
                    _rating >= 4 ?
                    Icon(
                      Icons.star,
                      size: _size,
                    )
                        : Icon(
                      Icons.star_border,
                      size: _size,
                    )
                ),
                color: Colors.red[500],
                onPressed: _setRatingAsThree,
                iconSize: _size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
