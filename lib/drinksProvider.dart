import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrinksProvider extends ChangeNotifier {
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
