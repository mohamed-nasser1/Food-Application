import 'package:flutter/material.dart';

import '../../meals/Meals.dart';
import '../../screens/details_screen.dart';
import 'Meal_card.dart';
import 'details/details_body.dart';

class MealBody extends StatelessWidget {
  const MealBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                  ),
                  ListView.builder(
                    itemCount: meals.length,
                    itemBuilder: (context, index) => MealCard(
                      mealIndex: index,
                      meal: meals[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              meal: meals[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
