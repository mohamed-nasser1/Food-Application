import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/homeScreen.dart';

import 'Detaild Screen.dart';
import 'Items.dart';
import 'Products.dart';
import 'adminpage.dart';


class Sandwiches_Page extends StatefulWidget {
  @override
  State<Sandwiches_Page> createState() => _Sandwiches_PageState();
}

class _Sandwiches_PageState extends State<Sandwiches_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text(
          "Sandwiches",
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),

        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) => homeScreen()));},
          color: Colors.orange,
        ),
      ),
      body: _Body(context),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget? _Body(BuildContext context) {
    TextStyle menu_text = TextStyle(fontSize: 20, color: Colors.white);
    return Container(
      color: Colors.orange.shade500,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Items(
                  menu_text: menu_text,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetaildScreen(p: products[index])),
                  ),
                  product: products[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
