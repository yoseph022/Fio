import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartData.items.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Image(
                                image: NetworkImage(
                                    "${cartData.items.values.toList()[index].imageUrl}"),
                                height: 100,
                                width: 100,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${cartData.items.values.toList()[index].title}"),
                                Text(
                                    "Rp.${cartData.items.values.toList()[index].price}")
                              ],
                            ),
                            new Spacer(),
                            Container(
                              child: 
                              // Consumer<Cart>(
                              //   builder: (context, Cart, child) => 
                                 Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          cartData.kurang("${cartData.items.values.toList()[index].id}",cartData.items.values.toList()[index].qty );
                                        }, icon: Icon(Icons.remove)),
                                    // Consumer<Cart>(
                                    //   builder: (context, cartdata, child) => 
                                      Text(
                                        cartData.items.values.toList()[index].qty.toString()
                                          ),
                                    // ),
                                    IconButton(
                                        onPressed: () {
                                          cartData.nambah(
                                            "${cartData.items.values.toList()[index].id}"
                                          );
                                        },
                                        icon: Icon(Icons.add))
                                  ],
                                ),
                              ),
                            // ),
                          ],
                        )
                      ],
                    ),
                  );
      // ListTile(
      // //
      
      //                   title: Text("${cartData.items.values.toList()[index].title}"),
      //                   subtitle: Text(
      //                         "\$ ${cartData.items.values.toList()[index].qty * cartData.items.values.toList()[index].price}"),
      
      //                   trailing: Container(
      //                     color: Colors.indigo,
      //                     child: Text(
      //                       "Quantity : ${cartData.items.values.toList()[index].qty}"),
      //                   ),
      
      //                 );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Total : Rp.${cartData.totalHarga}",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: IconButton(onPressed: () {
          cartData.clear();
        }, icon: Icon(Icons.arrow_forward)),
        color: Colors.indigo,
      ),
    );
  }
}
