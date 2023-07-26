
import 'package:flutter/material.dart';
import 'package:food_app/AddDrink.dart';
import 'package:food_app/AddSandwich.dart';
import 'package:food_app/adminpage.dart';
import 'package:food_app/homeScreen.dart';

import 'AddMeal.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'AdminPage :',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.all(40),
                    color: Colors.black,
                    child: Text(
                      'Add Meal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(0, 3),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AddMeal(
                            description: '',
                            id: 0,
                            image: '',
                            name: '',
                            price: 0,
                          ),
                        ),
                      );
                    },
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(40),
                    color: Colors.black,
                    child: Text(
                      'Add Sandwitch',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(0, 3),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddSandwich(
                              )));

                    },
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(40),
                    color: Colors.black,
                    child: Text(
                      'Add Drink',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(0, 3),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                    onPressed: ()
                    {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) =>AddDrink(
                            description: '',
                            id: 0,
                            image: '',
                            name: '',
                            price: 0,
                          )));
                    },
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    padding: EdgeInsets.all(40),
                    color: Colors.black,
                    child: Text(
                      'Home Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(0, 3),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                    onPressed: ()
                    {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) =>homeScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
