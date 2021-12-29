import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({Key? key}) : super(key: key);

  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  String mm = "";
  bool dismiss = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(dialogController.text);
  }

  TextEditingController dialogController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                //  dialogController.clear();
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            color: Colors.red,
                            height: 200,
                            width: 300,
                            alignment: Alignment.center,
                            child: Text("hellos",style: TextStyle(color: Colors.black,fontSize: 12),),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text("Click Here"),
              ),
              Text(
              mm,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
