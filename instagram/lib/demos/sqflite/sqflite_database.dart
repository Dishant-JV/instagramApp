import 'dart:async';

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
    return studentList;
  }

  dbDelete(var id) async {
    Database? db = await database;
    await db?.rawQuery('DELETE FROM STUDENT WHERE id=$id');
  }

// dbUpdate() async {
//   Database? db = await database;
//   db?.update('STUDENT', Student(name: 'Jenil', age: 25, std: 8).toJson(),
//       where: 'id=?', whereArgs: [3]);
//   // db?.rawUpdate("UPDATE STUDENT SET NAME='Dishant' WHERE id=1");
// }
}

class Student {
  String? name;
  int? age;
  int? std;
  int? id;

  Student({this.name, this.age, this.std});

  Student.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    std = json['std'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() =>
      {'name': name, 'age': age, 'std': std, 'id': id};
}
