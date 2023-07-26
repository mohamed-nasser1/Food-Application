import 'package:flutter/material.dart';

import 'HomeBody.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: HomeScreenAppBar(),
      body: HomeBody(),
    );
  }

  AppBar HomeScreenAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.orange,
      title: Text('Home'),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ],
    );
  }
}
