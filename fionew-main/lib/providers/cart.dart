import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  int get jumlah {
    return _items.length;
  }

  double get totalHarga {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.qty * cartItem.price;
    });
    return total;
  }

  void addCart(String productId, String title, int price, String imageUrl) {
    if (_items.containsKey(productId)) {
      // ketika sudah tersedia key product id
      _items.update(
        productId,
        (value) => CartItem(
          id: value.id,
          price: value.price,
          qty: value.qty + 1,
          title: value.title,
          imageUrl: value.imageUrl,
        ),
      );
    } else {
      // nambah product id baru
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: productId,
          price: price,
          qty: 1,
          title: title,
          imageUrl: imageUrl,
        ),
      );
    }
    notifyListeners();
  }
  void nambah(String productId){
     if (_items.containsKey(productId)) {
      // ketika sudah tersedia key product id
      _items.update(
        productId,
        (value) => CartItem(
          id: value.id,
          price: value.price,
          qty: value.qty + 1,
          title: value.title,
          imageUrl: value.imageUrl,
        ),
      );
    }
    notifyListeners();
  }

  void clear (){
    _items.clear();
    notifyListeners();
  }
  void kurang(String proid,int jum){
    if(_items.containsKey(proid) && jum >1){
      _items.update(proid, (value) => CartItem(id:value.id, price: value.price , qty: value.qty-1, title: value.title, imageUrl: value.imageUrl));

    }else{
      _items.remove(proid);
    }
    notifyListeners();
  }
  
  }