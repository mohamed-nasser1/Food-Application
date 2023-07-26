import 'package:flutter/material.dart';

class Screens {
  final String image, title;
  Screens({
    required this.image,
    required this.title,
  });
}

List<Screens> screens = [
  Screens(
    title: 'Meals',
    image: 'images/Meals.jpg',
  ),
  Screens(
    title: 'Sandwiches',
    image: 'images/Sandwiches.jpg',
  ),
  Screens(
    title: 'Drinks',
    image: 'images/Drinks.jpg',
  ),
];
