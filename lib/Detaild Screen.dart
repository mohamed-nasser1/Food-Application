import 'package:flutter/material.dart';

import 'Products.dart';
import 'Sandwiches_Page.dart';


class DetaildScreen extends StatelessWidget {
  final Product p;

  const DetaildScreen({Key? key, required this.p}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back) /*SvgPicture.asset("icons/back-arrow.svg")*/,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Sandwiches_Page()));
          },
          color: Colors.orange,
        ),
      ),
      body: _Body(context),
    );
  }

  Widget _Body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        20,
                        0,
                        0,
                      ),
                      child: Text(
                        p.title,
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 90, 0, 0),
                      child: Row(
                        children: [
                          Baseline(
                            baseline: 80,
                            baselineType: TextBaseline.alphabetic,
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Price: ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                                TextSpan(
                                    text: p.price.toString() + " EGP",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        ?.copyWith(color: Colors.white)),
                              ]),
                            ),
                          ),
                          Expanded(
                              child: Image.asset(
                            p.image,
                            fit: BoxFit.fitWidth,
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 0),
                      child: Text(p.description,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.grey.shade300, fontSize: 20)),
                    ),
                    cartcount(),
                    SizedBox(height: 25,),
                    Container(
                      child: RaisedButton(
                        color: Colors.amber,
                        onPressed: () {},
                        child: Text(
                          "Buy Now",
                          style: TextStyle(fontSize: 25, letterSpacing: 5,color: Colors.red),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width*0.9,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class cartcount extends StatefulWidget {
  const cartcount({Key? key}) : super(key: key);

  @override
  _cartcountState createState() => _cartcountState();
}

class _cartcountState extends State<cartcount> {
  int items = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SizedBox(
              width: 40,
              height: 32,
              child: OutlineButton(
                onPressed: () {
                  if (items > 0) {
                    items--;
                  }
                  setState(() {});
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              items.toString(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SizedBox(
              width: 40,
              height: 32,
              child: OutlineButton(
                onPressed: () {
                  items++;
                  setState(() {});
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          )
        ],
      ),
    );
  }
}
