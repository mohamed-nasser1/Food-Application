import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../MealsProvider.dart';
import '../../drinksProvider.dart';
import '../../models1/product.dart';
import 'drinks_image.dart';

class DetailsBodys extends StatelessWidget {
  const DetailsBodys({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int totalPrice;
    return Column(
      children: [
        Container(
          width: double.infinity,
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
              Container(
                child: Center(
                  child: Drinksimage(
                    size: size,
                    image: product.image,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  product.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Price: ${product.price} L.E',
                style: TextStyle(
                  fontSize: 20.0,
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
            product.description,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
          child: Row(
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
                  totalPrice = product.price * MealsProvider.counter;
                  print(totalPrice);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void addingAlertDialog(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(
        'Drinks',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      content: Text(
        'Your Drinks were added',
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
