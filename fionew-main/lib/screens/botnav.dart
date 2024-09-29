

import 'package:flutter/material.dart';

import 'accountscreen.dart';
import 'cart_screen.dart';
import 'homescree.dart';
import 'products_overview_screen.dart';

class botnav extends StatelessWidget {
  const botnav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.white, offset: Offset(0, -15), blurRadius: 1)
          ]),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  homescreen();
                }),
            IconButton(
                icon: Icon(Icons.shop),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductsOverviewScreen()));
                }),
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                }),
            IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                }),
          ],
        ),
      )),
    );
  }
}
