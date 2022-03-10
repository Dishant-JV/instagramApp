import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:instagram/demos/sqflite/sqflite_home.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDatabase {
  DataList dataList = Get.put(DataList());
  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDb();
    return _database;
  }

  _initDb() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "student.db");
    var theDb = await openDatabase(dbPath, version: 1,
        onCreate: (Database db, int version) {
      db.execute(
          "CREATE TABLE STUDENT(id INTEGER PRIMARY KEY,name TEXT,age INTEGER,std INTEGER)");
    });
    return theDb;
  }

  dbInsert(Student student) async {
    Database? db = await database;
    // Future<int>? id =
    //     db?.rawInsert('INSERT INTO STUDENTS VALUES("dishant",23,12)');
    final id = await db
        ?.insert('STUDENT', student.toJson())
        .whenComplete(() => print("data inserted"));
    final data = await db?.rawQuery("SELECT * FROM STUDENT");
    print(data);
    dataList.obxListData.value= data as List<Map<String,Object>>;
  }

  dbSelect() async {
    Database? db = await database;
    var userData = await db
        ?.rawQuery('SELECT * FROM STUDENT')
        .whenComplete(() => print("selected"));
    return userData;
  }

  dbDelete() async {
    Database? db = await database;
    final id = await db?.rawDelete('DELETE FROM STUDENT');
    print(id);
  }

// dbUpdate() async {
//   Database? db = await database;
//   db?.update('STUDENT', _student.toJson(), where: 'id=1');
//   // db?.rawUpdate("UPDATE STUDENT SET NAME='Dishant' WHERE id=1");
// }
}

class Student {
  String? name;
  int? age;
  int? std;

  Student({this.name, this.age, this.std});

  Student.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    std = json['std'];
  }

  Map<String, dynamic> toJson() => {'name': name, 'age': age, 'std': std};
}
