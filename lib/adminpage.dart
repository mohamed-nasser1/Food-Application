import 'package:flutter/material.dart';
import 'database.dart';

import 'database.dart';
class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    final  IDcont = TextEditingController();
    final  namecont = TextEditingController();
    final  pricecont = TextEditingController();
    final  imagecont = TextEditingController();
    return Scaffold(
        body: Padding(
    padding: EdgeInsets.fromLTRB(
    MediaQuery.of(context).size.width * 0.05,
    0,
    MediaQuery.of(context).size.width * 0.05,
    0,
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text(
    "Admin Page",
    style: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    ),
    textAlign: TextAlign.center,
    ),
    SizedBox(
    height: MediaQuery.of(context).size.height * 0.02,
    ),
    TextField(
    keyboardType: TextInputType.number,
    controller: IDcont,
    decoration: InputDecoration(
    labelText: "ID",
    hintText: "12345678",
    ),
    ),
    TextField(
    controller: namecont,
    decoration: InputDecoration(
    labelText: "Name",
    ),
    ),
    TextField(
    controller: pricecont,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    labelText: "price",
    ),
    ),
    TextField(
    controller: imagecont,
    decoration: InputDecoration(
    labelText: "Image Path",
    ),
    ),
    SizedBox(
    height: MediaQuery.of(context).size.height * 0.03,
    ),
    ElevatedButton(
    onPressed: () {
    Data.insertInDatabase(name: namecont.text, image: imagecont.text, price: int.parse(pricecont.text), id: int.parse(IDcont.text));
    Data.getData(id: int.parse(IDcont.text));
    },
    child: Text("ADD"),
    ),
    ],
    ),
    ),
    );
  }
}
