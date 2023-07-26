import 'package:flutter/material.dart';
import '';
import '../widgets/Meal/MealBody.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: mealsScreenAppBar(),
      body: MealBody(),
    );
  }

  AppBar mealsScreenAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.orange,
      title: Text('Meals : '),
      actions: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ],
    );
  }
}
