import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> deleteproduct() {
  return users
    .doc('ABC123')
    .delete()
    .then((value) => print("Product Deleted"))
    .catchError((error) => print("Failed to delete user: $error"));
}