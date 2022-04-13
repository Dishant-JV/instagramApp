import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:instagram/demos/sqflite/sqflite_home.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDatabase {
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
  }

  dbSelect() async {
    Database? db = await database;
    List<Student> studentList = [];
    final result = await db?.rawQuery('SELECT * FROM STUDENT');
    print(result);
    if (result != null && result.isNotEmpty) {
      result.forEach((element) {
        studentList.add(Student.fromJson(element));
      });
    }
    print(studentList);
    return studentList;
  }

  dbDelete(var id) async {
    Database? db = await database;
    await db?.rawQuery('DELETE FROM STUDENT WHERE id=$id');
  }

  dbselect_id_data(int id) async {
    Database? db = await database;
    List<Student> studentList = [];
    final result = await db?.rawQuery('SELECT * FROM STUDENT WHERE id=$id');
    if (result != null) {
      result.forEach((element) {
        studentList.add(Student.fromJson(element));
      });
    }
    return studentList;
  }

  // dbUpdate(String name, int age, int std, int id) async {
  //   print(std);
  //   print(id);
  //   Database? db = await database;
  //   int? a = await db?.rawUpdate(
  //       "UPDATE STUDENT SET name=$name,std=$std,age=$age WHERE id=$id");
  //   print(a);
  // }
  dbUpdate(Student student,int id)async{
    print(id);
    print(student.id);
    Database? db = await database;
   int? a= await db?.update("STUDENT", student.toJson(),where:"id=?",whereArgs: ['$id']);
   print(a);
  }

  update(String name, int age, int std, int id) async {
    Database? db = await database;
    await db?.rawUpdate(
        "UPDATE STUDENT SET age='$age',std='$std' ,name='$name' WHERE id='$id'");
  }
}

class Student {
  int? id;
  String? name;
  int? age;
  int? std;

  Student({this.name, this.age, this.std,this.id});

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    std = json['std'];
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'age': age, 'std': std};
}
