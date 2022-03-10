import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/demos/sqflite/sqflite_database.dart';
import 'package:swipedetector/swipedetector.dart';

class SqFliteHome extends StatefulWidget {
  const SqFliteHome({Key? key}) : super(key: key);

  @override
  _SqFliteHomeState createState() => _SqFliteHomeState();
}

class _SqFliteHomeState extends State<SqFliteHome> {
  List<Student> userData = [];
  final keys = GlobalKey<FormState>();
  String nameError = "";
  String ageError = "";
  String stdError = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    userData = await database.dbSelect();
    setState(() {});
  }

  SqfliteDatabase database = SqfliteDatabase();

  Widget dialog() {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffAEABA6),
              borderRadius: BorderRadius.circular(30)),
          height: 310,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter Data",
                style: TextStyle(
                    fontFamily: "RyeFonts",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: keys,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      height: 45,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              setState(() {
                                nameError = "enter name";
                              });
                            }
                          },
                          controller: nameController,
                          focusNode: nameNode,
                          cursorColor: Colors.black,
                          cursorHeight: 20,
                          onEditingComplete: () {
                            setState(() {
                              FocusScope.of(context).requestFocus(ageNode);
                            });
                          },
                          style:
                              TextStyle(fontFamily: "RyeFonts", fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 18, left: 15),
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
                    Text(
                      nameError.toString(),
                      style: TextStyle(fontSize: 13, color: Colors.red),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      height: 45,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              setState(() {
                                ageError = "enter age";
                              });
                            }
                          },
                          keyboardType: TextInputType.number,
                          controller: ageController,
                          focusNode: ageNode,
                          cursorColor: Colors.black,
                          cursorHeight: 20,
                          style:
                              TextStyle(fontFamily: "RyeFonts", fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 18, left: 15),
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
                    Text(
                      ageError.toString(),
                      style: TextStyle(fontSize: 13, color: Colors.red),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      height: 45,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              setState(() {
                                stdError = "enter standard";
                              });
                            }
                          },
                          keyboardType: TextInputType.number,
                          controller: stdController,
                          focusNode: stdNode,
                          cursorColor: Colors.black,
                          cursorHeight: 20,
                          style:
                              TextStyle(fontFamily: "RyeFonts", fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 18, left: 15),
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
                    Text(
                      ageError.toString(),
                      style: TextStyle(fontSize: 13, color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () async {
                        if (keys.currentState!.validate()) {
                          Student student = Student(
                              name: nameController.text,
                              age: int.parse(ageController.text),
                              std: int.parse(stdController.text));
                          await database.dbInsert(student);
                          nameController.clear();
                          ageController.clear();
                          stdController.clear();
                          nameError = "";
                          ageError = "";
                          stdError = "";
                          setState(() {
                            userData.add(student);
                          });
                          Navigator.pop(context);
                        }
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
                            "Insert",
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
              ),
            ],
          ),
        ));
  }

  FocusNode nameNode = FocusNode();
  TextEditingController nameController = TextEditingController();
  FocusNode ageNode = FocusNode();
  TextEditingController ageController = TextEditingController();
  FocusNode stdNode = FocusNode();
  TextEditingController stdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                  barrierColor: Colors.black26,
                  context: (context),
                  builder: (context) {
                    return dialog();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffAEABA6),
                  borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 15, left: 15),
              height: 55,
              width: 55,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Color(0xff524F4A),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffAEABA6),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 20, fontFamily: 'RyeFonts'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Age",
                      style: TextStyle(fontSize: 20, fontFamily: 'RyeFonts'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Standard",
                      style: TextStyle(fontSize: 20, fontFamily: 'RyeFonts'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: userData.length,
                  itemBuilder: (context, index) {
                    Student student = userData[index];
                    return InkWell(
                      onTap: ()async {
                        await database.dbDelete(student.id);
                        setState(()  {
                          getData();
                        });

                      },
                      child: Container(
                        height: 60,
                        color: index % 2 == 0
                            ? Colors.grey.shade200
                            : Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    student.name ?? "",
                                    style: TextStyle(
                                        fontSize: 17, fontFamily: 'RyeFonts'),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  student.age.toString(),
                                  style: TextStyle(
                                      fontSize: 17, fontFamily: 'RyeFonts'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  student.std.toString(),
                                  style: TextStyle(
                                      fontSize: 17, fontFamily: 'RyeFonts'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
