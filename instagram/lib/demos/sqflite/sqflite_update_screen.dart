import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:instagram/demos/sqflite/sqflite_database.dart';
import 'package:instagram/demos/sqflite/sqflite_home.dart';

class SqfliteUpdateScreen extends StatefulWidget {
  final int? id;

  const SqfliteUpdateScreen({Key? key, this.id}) : super(key: key);

  @override
  _SqfliteUpdateScreenState createState() => _SqfliteUpdateScreenState();
}

class _SqfliteUpdateScreenState extends State<SqfliteUpdateScreen> {
  Student student = Student();
  List<Student> studentList = [];
  SqfliteDatabase sqfliteDatabase = SqfliteDatabase();
  FocusNode nameNode = FocusNode();
  TextEditingController nameController = TextEditingController();
  FocusNode ageNode = FocusNode();
  TextEditingController ageController = TextEditingController();
  FocusNode stdNode = FocusNode();
  TextEditingController stdController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int? a = widget.id;
    print(a);
    if (a != null) getData(a);
  }

  getData(int id) async {
    studentList = await sqfliteDatabase.dbselect_id_data(id);
    student = studentList[0];
    nameController.value = TextEditingValue(text: "${student.name}");
    ageController.value = TextEditingValue(text: "${student.age}");
    stdController.value = TextEditingValue(text: "${student.std}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 30,
              ),
              child: Text(
                "Update Data",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'RyeFonts'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: nameController,
                      focusNode: nameNode,
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      onEditingComplete: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(ageNode);
                        });
                      },
                      style: TextStyle(fontFamily: "RyeFonts", fontSize: 14),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 18, left: 15),
                          hintText: "Name",
                          hintStyle: TextStyle(
                              fontFamily: "RyeFonts",
                              fontSize: 14,
                              color: Colors.grey.shade500),
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: ageController,
                      focusNode: ageNode,
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      style: TextStyle(fontFamily: "RyeFonts", fontSize: 14),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 18, left: 15),
                          hintText: "Age",
                          hintStyle: TextStyle(
                              fontFamily: "RyeFonts",
                              fontSize: 14,
                              color: Colors.grey.shade500),
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: stdController,
                      focusNode: stdNode,
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      style: TextStyle(fontFamily: "RyeFonts", fontSize: 14),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 18, left: 15),
                          hintText: "Standard",
                          hintStyle: TextStyle(
                              fontFamily: "RyeFonts",
                              fontSize: 14,
                              color: Colors.grey.shade500),
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                    Student student = Student(
                        age: int.parse(ageController.text),
                        id: widget.id,
                        std: int.parse(stdController.text),
                        name: nameController.text);
                    await sqfliteDatabase.dbUpdate(student, widget.id??0);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff524F4A),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      height: 45,
                      width: 100,
                      child: Text(
                        "Update",
                        style: TextStyle(
                            fontFamily: "RyeFonts",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
