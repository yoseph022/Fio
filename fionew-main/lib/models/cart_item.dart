// import 'package:flutter/material.dart';

class CartItem {
  String id;
  String title;
  int price;
  int qty;
  String imageUrl;
  

  CartItem({
    required this.id,
    required this.price,
    required this.qty,
    required this.title,
    required this.imageUrl,
  });
}
