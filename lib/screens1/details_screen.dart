import 'package:flutter/material.dart';

import '../MealsProvider.dart';
import '../drinksProvider.dart';
import '../models1/product.dart';
import '../widgets/Meal/details/details_body.dart';
import '../widgets1/details/details_body.dart';


class DetailsScreens extends StatelessWidget {
  const DetailsScreens({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: detailsAppBar(context),
      body: DetailsBodys(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
          MealsProvider.counter = 1;
        },
      ),
      centerTitle: false,
      title: Text('Back',
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
