import 'dart:math';
import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _allproducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 1000 + Random().nextInt(10000000).toInt(),
        imageUrl: 'https://picsum.photos/id/$index/200/200',
        isFavorite: false,
      );
    },
  );

  List<Product> get allproducts {
    return _allproducts;
  }
  
  
  Product findById(productId) {
    return _allproducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
