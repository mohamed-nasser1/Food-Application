import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealsProvider extends ChangeNotifier {
  static int counter = 1;
  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    if (counter > 1) {
      counter--;
      notifyListeners();
    }
  }
}
