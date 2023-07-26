import 'package:flutter/material.dart';

import '../MealsProvider.dart';
import '../meals/Meals.dart';
import '../widgets/Meal/details/details_body.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.meal}) : super(key: key);
  final Meals meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        meal: meal,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.orange,
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
