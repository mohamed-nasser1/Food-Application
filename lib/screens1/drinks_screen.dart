import 'package:flutter/material.dart';

import '../widgets1/drinks/drinks_body.dart';


class DrinksScreen extends StatelessWidget {
  const DrinksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: drinksAppBar(),
      body: DrinksBody(),
    );
  }

  AppBar drinksAppBar() {
    return AppBar(
      backgroundColor: Colors.orange,
      elevation: 0,
      title: Text('Drinks:'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        )
      ],
    );
  }
}
