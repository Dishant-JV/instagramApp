import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:instagram/demos/sqflite/check%20and%20Update%20Quantity/check_update_model.dart';
import 'package:instagram/demos/sqflite/wishlist/main_page_product_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CheckUpdateTable {
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
    List<CheckUpdateModel> checkUpdateList = [];
    final result = await db?.rawQuery('SELECT * FROM checkQuantityTbl');
    print(result);
    if (result != null && result.isNotEmpty) {
      result.forEach((element) {
        checkUpdateList.add(CheckUpdateModel.fromJson(element));
      });
    }
    return checkUpdateList;
  }

  select_id_update(int? id, int? qty) async {
    print(id);
    print(qty);
    Database? db = await database;
    final result = await db?.rawQuery('SELECT * FROM checkQuantityTbl WHERE ID=$id');
    if (result != null) {
      await db?.rawUpdate("UPDATE checkQuantityTbl SET qty='$qty' WHERE ID='$id'");
    }
  }
  update_isadd(int? id,int? isadd)async{
    print(id);
    Database? db = await database;
    final result = await db?.rawQuery('SELECT * FROM checkQuantityTbl WHERE ID=$id');
    print(result);
    if (result != null) {
      await db?.rawUpdate("UPDATE checkQuantityTbl SET isadd='1' WHERE ID='$id'");
  }

  }


  wishlist_id_delete(int? id) async {
    print(id);
    Database? db = await database;
    await db?.rawQuery('DELETE FROM wishList WHERE id=$id');
  }
  wishlist_id_insert(int? id,String? name,int? price)async{
    Database? db = await database;
    final ids=await db?.rawInsert("INSERT INTO wishList VALUES ('$id','$name','$price')");
    print(ids);
  }
  Future wishlist_id_select()async{
    Database? db = await database;
    List<ProductModel> productList = [];
    final result = await db?.rawQuery('SELECT *  FROM wishList');
    print(result);
    if (result != null && result.isNotEmpty) {
      result.forEach((element) {
        productList.add(ProductModel.fromJson(element));
      });
    }
    return productList;

  }

}
