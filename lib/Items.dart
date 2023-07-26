import 'package:flutter/material.dart';
import 'Products.dart';

class Items extends StatelessWidget {
  const Items({
    Key? key,
    required this.menu_text,
    required this.product,
    required this.press,
  }) : super(key: key);
  final TextStyle menu_text;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 120,
              width: 160,
              child: Image.asset(
                product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              product.title,
              style: menu_text,
            ),
          ),
          Text(
            product.price.toString() + " EGP",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
