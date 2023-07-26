import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../MealsProvider.dart';
import '../../../meals/Meals.dart';
import 'meal_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.meal}) : super(key: key);
  final Meals meal;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int totalPrice;
    return Column(
      children: [
        Container(
          // width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: MealImage(
                  size: size,
                  image: meal.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  meal.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Price : ${meal.price} L:E',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Text(
            meal.descrption,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              color: Colors.orange,
              child: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                Provider.of<MealsProvider>(context, listen: false)
                    .increment();
              },
            ),
            Consumer<MealsProvider>(
              builder: (context, provider, _) => Text(
                MealsProvider.counter.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.orange,
              child: Icon(Icons.remove, color: Colors.white),
              onPressed: () {
                Provider.of<MealsProvider>(context, listen: false)
                    .decrement();
              },
            ),
            SizedBox(
              width: 70,
            ),
            RaisedButton(
              color: Colors.orange,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                addingAlertDialog(context);
                totalPrice = meal.price * MealsProvider.counter;
                print(totalPrice);
              },
            ),
          ],
        ),
      ],
    );
  }

  void addingAlertDialog(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(
        'Meals',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      content: Text(
        'Your Melas were added',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
