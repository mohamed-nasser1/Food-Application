import 'package:flutter/material.dart';
import 'Products.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class Data {

  static late Database db;


  static void createDB() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'sandwese.db');

   await openDatabase(path, version: 1,onCreate:
        (Database db, _) async {
      db.execute(
          "CREATE TABLE Sand (id INTEGER , name TEXT, price INTEGER, image TEXT)"
      ).then((value) {
        print("Create Successfully");
      }).catchError((error) {
        print(path);
        print(error.toString());
      });
    },

    ).then((value){
      db = value;
   }).catchError((error){
     print(error);
   });
  }

 static void insertInDatabase({
  required String name,
   required String image,
   required int price,
   required int id,
}){

    db.rawInsert("INSERT INTO sand(id,name, price, image) VALUES(?,?,?,?)",[
      id,
      name,
      price,
      image
    ]).then((value) {
      print(value.toString());
      print("INSERTTTTTTTTTTTTTTTT");
    }).catchError((error){
      print(error.toString());
    });
  }


 static Future<void> getData({
  required int id,
}) async{
    Product p=Product(id: id, image: "", title: "", price: 0, description: "description", size: 25, color: Colors.red);
   try{
     List<Map<String,Object?>>x = await db.rawQuery("SELECT * FROM sand WHERE id = ?",[id]);
     p = Product.fromJson(x[0]);
   }
   catch(error){
     print(error.toString());
   }
   /*db.rawQuery("SELECT * FROM Test WHERE id = ?",[id]).then((value){
      t = Test.fromJson(value[0]);
    }).catchError((error){
      print(error.toString());
    });*/
    products.add(p);
    print(products[2].title);
    print("ADDDDDDDDDDDEDDDDDDDDD");
  }
  static void closeDB() async =>await db.close();
}