import 'package:flutter/material.dart';

import '../../meals/Meals.dart';


class MealCard extends StatelessWidget {
  const MealCard({
    Key? key,
    required this.mealIndex,
    required this.meal,
    required this.press,
  }) : super(key: key);
  final int mealIndex;
  final Meals meal;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(
                  meal.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        meal.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 25,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text(
                          '${meal.price} L:E',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
