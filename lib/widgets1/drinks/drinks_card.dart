import 'package:flutter/material.dart';

import '../../models1/product.dart';


class DrinksCard extends StatelessWidget {
  const DrinksCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
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
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(product.title,
                      style:TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20 * 1.5,
                          vertical: 20 / 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('${product.price} L.E',style:TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold)),
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
