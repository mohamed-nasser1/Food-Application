import 'dart:core';
import 'package:flutter/material.dart';

class User
{
  String username;
  String Email;
  String Password;
  String region;
  String PhoneNumber;
  int? productCounter = 0;
  int? bill = 0;

  User({
    required this.username, required this.Email, required this.Password,
    required this.region, required this.PhoneNumber, this.productCounter, this.bill
  });


}


