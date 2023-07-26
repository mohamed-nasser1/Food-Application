import 'package:flutter/material.dart';
import 'screens.dart';

class homeCard extends StatelessWidget {
  const homeCard({
    Key? key,
    required this.press,
    required this.homeIndex,
    required this.screen,
  }) : super(key: key);
  final int homeIndex;
  final Screens screen;
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
                  screen.image,
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
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 60),
                      child: Text(
                        screen.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
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
