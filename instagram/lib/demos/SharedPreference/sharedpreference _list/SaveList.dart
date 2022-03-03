import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/demos/SharedPreference/sharedpreference%20_list/save_list_controller.dart';

class SaveList extends StatefulWidget {
  const SaveList({Key? key}) : super(key: key);

  @override
  _SaveListState createState() => _SaveListState();
}

class _SaveListState extends State<SaveList> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  List<SaveListController> userList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SaveListController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: idController,
              decoration: InputDecoration(),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    userList.add(SaveListController(
                        id: int.parse(idController.text),
                        name: nameController.text));
                    SaveListController.storeData(userList);
                  });
                },
                child: Text("save")),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(userList[index].id.toString()),
                        Text(userList[index].name.toString()),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  // Future<void> getData() async {
  //   UserModel userModel = await SaveListController.getData();
  //   setState(() {
  //     userList = userModel.userList??[];
  //   });
  //   print(userModel.userList);
  // }
}
