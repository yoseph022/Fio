import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';
import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context, listen: false);

    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.white70.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(width: 3, color: Colors.indigo)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ProductDetailScreen.routeName,
                      arguments: productData.id,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(115), // Image radius
                      child: Image.network(productData.imageUrl,
                          ),
                    ),
                  )
                  // Image.network(
                  //   productData.imageUrl,
                  //   width: MediaQuery.of(context).size.width,
                  //   fit: BoxFit.cover,
                  //   b

                  // ),
                  ),
            ),
            ListTile(
                title: Text(
                  productData.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Rp.${productData.price}",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Consumer<Product>(
                  builder: (context, productData, child) => IconButton(
                    icon: (productData.isFavorite)
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border_outlined),
                    color: Colors.red,
                    onPressed: () {
                      productData.statusFav();
                    },
                  ),
                )),
            // Row(

            //   children: [
            //     SizedBox(width: 8,),

            //     Title(color: Colors.black, child: Text(productData.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

            //     new Spacer(),
            //     Consumer<Product>(
            //   builder: (context, productData, child) => IconButton(
            //     icon: (productData.isFavorite)
            //         ? Icon(Icons.favorite)
            //         : Icon(Icons.favorite_border_outlined),
            //     color: Colors.red,
            //     onPressed: () {
            //       productData.statusFav();
            //     },
            //   ),
            // ),
            //   ],
            // ),
          ],
        )
        // GridTile(
        //   child: GestureDetector(
        //     onTap: () {
        //       Navigator.of(context).pushNamed(
        //         ProductDetailScreen.routeName,
        //         arguments: productData.id,
        //       );
        //     },
        //     child: Image.network(
        //       productData.imageUrl,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   header: GridTileBar(
        //     backgroundColor: Colors.indigo,
        //       title: Text(
        //       productData.title,
        //       textAlign: TextAlign.center,
        //     ),
        //     trailing: Consumer<Product>(
        //       builder: (context, productData, child) => IconButton(
        //         icon: (productData.isFavorite)
        //             ? Icon(Icons.favorite)
        //             : Icon(Icons.favorite_border_outlined),
        //         color: Colors.red,
        //         onPressed: () {
        //           productData.statusFav();
        //         },
        //       ),
        //     ),
        //   ),
        //   // footer: GridTileBar(
        //   //   // backgroundColor: Colors.black87,

        //   //   // title: Text(
        //   //   //   productData.title,
        //   //   //   textAlign: TextAlign.center,
        //   //   // ),
        //   //   leading: Align(
        //   //     alignment: Alignment.centerRight,
        //   //     child: IconButton(
        //   //       icon: Icon(
        //   //         Icons.shopping_cart,
        //   //       ),
        //   //       onPressed: () {
        //   //         ScaffoldMessenger.of(context).showSnackBar(
        //   //           SnackBar(
        //   //             content: Text("Berhasil ditambahkan"),
        //   //             duration: Duration(
        //   //               milliseconds: 500,
        //   //             ),
        //   //           ),
        //   //         );
        //   //         cart.addCart(
        //   //             productData.id, productData.title, productData.price,productData.imageUrl);
        //   //       },
        //   //       color: Theme.of(context).primaryColor,
        //   //     ),
        //   //   ),
        //   // ),
        // ),
        );
  }
}
