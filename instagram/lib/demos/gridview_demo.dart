import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  List<String> mapList=["hello","hyyy","ooop","loooo","goooo"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.red,

            width: 100,
          ),
        ),
        // body: Container(
        //     child: StaggeredGrid.count(
        //   crossAxisCount: 3,
        //   mainAxisSpacing: 3,
        //   crossAxisSpacing: 4,
        //   children: [
        //   ],
        //   // children: [
        //   //   StaggeredGridTile.count(
        //   //       crossAxisCellCount: 2,
        //   //       mainAxisCellCount: 1.5,
        //   //       child: Container(
        //   //         color: Colors.red,
        //   //         child: Text("1"),
        //   //         alignment: Alignment.center,
        //   //       )),
        //   //   StaggeredGridTile.count(
        //   //       crossAxisCellCount: 2,
        //   //       mainAxisCellCount: 1,
        //   //       child: Container(
        //   //         color: Colors.red,
        //   //         child: Text("1"),
        //   //         alignment: Alignment.center,
        //   //       )),
        //   //   StaggeredGridTile.count(
        //   //       crossAxisCellCount: 1,
        //   //       mainAxisCellCount: 2,
        //   //       child: Container(
        //   //         color: Colors.red,
        //   //         child: Text("1"),
        //   //         alignment: Alignment.center,
        //   //       )),
        //   //   StaggeredGridTile.count(
        //   //       crossAxisCellCount: 2,
        //   //       mainAxisCellCount: 2,
        //   //       child: Container(count
        //   //         color: Colors.red,
        //   //         child: Text("1"),
        //   //         alignment: Alignment.center,
        //   //       )),
        //   //   StaggeredGridTile.count(
        //   //       crossAxisCellCount: 2,
        //   //       mainAxisCellCount: 2,
        //   //       child: Container(
        //   //         color: Colors.red,
        //   //         child: Text("1"),
        //   //         alignment: Alignment.center,
        //   //       )),
        //   // ],
        // )
        //     // child: GridView.builder(
        //     //     itemCount: 15,
        //     //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     //         crossAxisSpacing: 5,
        //     //         mainAxisSpacing: 5,
        //     //         mainAxisExtent: MediaQuery.of(context).size.height * 0.5,
        //     //         crossAxisCount: 3),
        //     //     itemBuilder: (context, index) {
        //     //       return Container(
        //     //         height: 100,
        //     //         width: 200,
        //     //         color: index % 2 == 0 ? Colors.red : Colors.orange,
        //     //       );
        //     //     }),
        //     ),
      ),
    );
  }
}
