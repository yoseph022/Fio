import 'package:figurenew2/widgets/badge.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/cart_screen.dart';
import '../providers/all_products.dart';
import '../providers/cart.dart';
class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!
    final product = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return Align(
                alignment: Alignment.center,
                // child: Badge(
                //     // ignore: sort_child_properties_last
                //     child: ch ,
                //     label: Text(
                //       value.jumlah.toString(),
                //     )),
              );
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    CartScreen.routeName,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Image.network(
              "${product.imageUrl}",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${product.title}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Consumer<Product>(
              //     builder: (context, product, child) => IconButton(
              //       icon: (product.isFavorite)
              //           ? Icon(Icons.favorite)
              //           : Icon(Icons.favorite_border_outlined),
              //       color: Colors.red,
              //       onPressed: () {
              //         product.statusFav();
              //       },
              //     ),
              //   ),
              // )
            ],
          ),
          SizedBox(height: 3),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Rp. ${product.price}",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),

          SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'DESKRPSI',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "${product.description}",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          // SizedBox(height: 30),
          // Text(
          //   "Add to cart",
          //   style: TextStyle(
          //     fontSize: 24,
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.indigo,
        child: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Berhasil ditambahkan"),
                duration: Duration(
                  milliseconds: 500,
                ),
              ),
            );
            cart.addCart(
                product.id, product.title, product.price, product.imageUrl);
          },
          icon: Icon(Icons.add_shopping_cart),
        ),
      ),
    );
  }
}
