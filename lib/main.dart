// @dart=2.9

import 'package:flutter/material.dart';
import 'package:food_app/Database_Helper.dart';
import 'package:food_app/MealsProvider.dart';
import 'package:food_app/drinksProvider.dart';
import 'package:provider/provider.dart';
import 'LoginForm.dart';
import 'Database_Helper.dart';
import 'package:provider/provider.dart';
import 'database.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDatabase.CreateDatabase();
  await Data.createDB();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
         create: (context) => MealsProvider(),
        //MealsProvider();
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login & SignUp',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: LoginForm()
      ),
    );
  }
}
