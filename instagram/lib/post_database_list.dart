import 'dart:io';

import 'package:flutter/services.dart';
import 'package:instagram/models/post_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class PostDatabaseList {
  Database? db;

  Future<Database?> get database async {
    if (db != null) {
      return db;
    }
    db = await initDatabase();
    return db;
  }

  initDatabase() async {
    var dbDir = await getDatabasesPath();
    var dbPath = join(dbDir, "asset_instagram.db");
    if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load("assets/database/instagram.db");
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(dbPath).writeAsBytes(bytes);
    }
    var db = await openDatabase(dbPath);
    return db;
  }

   dbSelect() async {
    Database? db = await database;
    List<PostModel> lstData = [];
    final result = await db?.rawQuery('SELECT * FROM post_table');
    if (result != null && result.isNotEmpty) {
      result.forEach((element) {
         lstData.add(PostModel.fromJson(element));
      });
    }
    return lstData;
  }
}
