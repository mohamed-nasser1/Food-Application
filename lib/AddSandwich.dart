import 'package:flutter/material.dart';
import 'package:food_app/Assintant.dart';
import 'Assintant.dart';
import 'database.dart';
import 'meals/Meals.dart';

class AddSandwich extends StatefulWidget {
  const AddSandwich(
      {Key? key})
      : super(key: key);


  @override
  State<AddSandwich> createState() => _AddSandwichState();
}

class _AddSandwichState extends State<AddSandwich> {
  final _id = TextEditingController();
  final _name = TextEditingController();
  final _image = TextEditingController();
  final _price = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Back',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: _id,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Sandwich id",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: _name,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Sandwich name",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: _image,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Sandwich image",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: _price,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Sandwich price",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                  color: Colors.black,
                  child: Text('Add Sandwich',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Data.insertInDatabase(name: _name.text, image: _image.text, price: int.parse(_price.text), id: int.parse(_id.text));
                    Data.getData(id: int.parse(_id.text));
                    alertDialog(context, 'Added Successfully');}
                  ),

            ],
          ),
        ),
      ),
    );
  }
}
