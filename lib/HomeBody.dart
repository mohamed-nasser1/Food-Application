import 'package:flutter/material.dart';
import 'package:food_app/Sandwiches_Page.dart';
import 'package:food_app/screens/MealsScreen.dart';
import 'package:food_app/screens/details_screen.dart';
import 'package:food_app/screens1/drinks_screen.dart';
import 'screens.dart';

import 'homeCard.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  final List<Widget> list = [MealsScreen(), Sandwiches_Page(), DrinksScreen()];
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
                    itemCount: screens.length,
                    itemBuilder: (context, index) => homeCard(
                      homeIndex: index,
                      screen: screens[index],
                      press: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => list[index]),
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
