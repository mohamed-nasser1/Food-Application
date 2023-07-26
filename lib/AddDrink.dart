import 'package:flutter/material.dart';
import 'package:food_app/Assintant.dart';
import 'Assintant.dart';
import 'meals/Meals.dart';
import 'models1/product.dart';

class AddDrink extends StatefulWidget {
  const AddDrink(
      {Key? key,
        required this.id,
        required this.price,
        required this.name,
        required this.description,
        required this.image})
      : super(key: key);

  final int id, price;
  final String name, description, image;

  @override
  State<AddDrink> createState() => _AddDrinkState();
}

class _AddDrinkState extends State<AddDrink> {
  final _id = TextEditingController();
  final _name = TextEditingController();
  final _image = TextEditingController();
  final _price = TextEditingController();
  final _description = TextEditingController();
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
                    hintText: "Enter Drink id",
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
                    hintText: "Enter Drink name",
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
                    hintText: "Enter Drink image",
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
                  controller: _description,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Drink description",
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
                    hintText: "Enter Drink price",
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
                  child: Text('Add Drink',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    products.add(Product
                      (
                      id: int.parse(_id.text),
                      title: _name.text as String,
                      price:  int.parse(_price.text),
                      image: _image.text as String,
                      description: _description.text as String
                      )



                    );
                    alertDialog(context, 'Added Successfully');
                  }),

            ],
          ),
        ),
      ),
    );
  }
}
