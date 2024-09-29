import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
FirebaseFirestore firestore = FirebaseFirestore.instance;
class AddProduct extends StatelessWidget {
  final String name;
  final String description;
  final int price;

  AddProduct(this.name, this.description, this.price);

  @override
  Widget build(BuildContext context) {
    CollectionReference products = FirebaseFirestore.instance.collection('products');

    Future<void> AddProduct() {
      // Call the user's CollectionReference to add a new user
      return products.add({
            'name': name, // John Doe
            'description': description, // Stokes and Sons
            'price': price // 42
          })
          .then((value) => print("Product Added"))
          .catchError((error) => print("Failed to add Product: $error"));
    }

    return TextButton(
      onPressed: AddProduct,
      child: Text(
        "Add Product",
      ),
    );
  }
}