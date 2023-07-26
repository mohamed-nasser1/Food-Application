import 'package:flutter/material.dart';
import 'package:food_app/Assintant.dart';
import 'Assintant.dart';
import 'meals/Meals.dart';

class AddMeal extends StatefulWidget {
  const AddMeal(
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
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
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
                    hintText: "Enter meal id",
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
                    hintText: "Enter meal name",
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
                    hintText: "Enter meal image",
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
                    hintText: "Enter meal description",
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
                    hintText: "Enter meal price",
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
                  child: Text('Add Meal',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    meals.add(
                        Meals(
                            id: int.parse(_id.text),
                            title: _name.text as String,
                            price:  int.parse(_price.text),
                            image: _image.text as String,
                            descrption: _description.text as String
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
