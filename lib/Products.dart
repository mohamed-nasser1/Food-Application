import 'package:flutter/material.dart';

class Product {
   late String image, title, description;
   late int price, size, id;
   late Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
  Product.fromJson(Map<String,dynamic> json){
    id = json["id"];
    title = json["name"];
    price = json["price"];
    image = json["image"];
  }
}

List<Product> products = [
  Product(
    id: 1,
    image: "images/Bigmac.png",
    title: "Big Mac",
    price: 95,
    description: "The Big Mac consists of two 1.6 oz (45 g) beef patties, ""special sauce"" (a variant of Thousand Island dressing), shredded iceberg lettuce, American cheese slices, sliced dill pickles, and minced onions, served in a three-part sesame seed bun.",
    size: 12,
    color: Colors.white,),
  Product(id: 2,
    image: "images/Chicken-Mac.png",
    title: "Chicken Mac",
    price: 75,
    description: "This is a Chicken Mac, This particular dish is mainly composed of elbow macaroni, shredded chicken, and Lady's Choice Mayonnaise. It is made festive and more delicious by an array of ingredients.",
    size: 30,
    color: Colors.red,),
  Product(id: 3,
    image: "images/McRoyal.png",
    title: "Mac Royal",
    price: 20,
    description: "MAC How Royal is a moderately cool-toned, medium-dark blue with a pearl finish. It is a discontinued eyeshadow",
    size: 30,
    color: Colors.red,),
];