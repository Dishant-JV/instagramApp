import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({Key? key}) : super(key: key);

  @override
  _SliverAppBarDemoState createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            expandedHeight: 100.0,
            title: Text("Dishant"),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 800,
                width: double.infinity,
                color: Colors.red,
                child: InkWell(
                    onTap: () {
                      MotionToast(
                        animationDuration: Duration(seconds: 1),
                        toastDuration: Duration(seconds: 2),
                        secondaryColor: Colors.yellow,
                        backgroundType: BACKGROUND_TYPE.transparent,
                        description: Text("You can customize the toast!"),
                        width: 300,
                        height: 100,
                        primaryColor: Colors.grey.withOpacity(0.2),
                        icon: Icons.email,
                      ).show(context);
                    },
                    child: Text(
                      "Show Toast",
                      style: TextStyle(fontSize: 25),
                    )),
              )
            ],
          ))
        ],
      )),
    );
  }
}
