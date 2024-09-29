

import 'package:flutter/material.dart';
import 'package:_flutterfire_internals/_flutterfire_internals.dart';
import 'botnav.dart';
import 'category.dart';
import 'products_overview_screen.dart';
import 'productslider.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FIO'),
      ),
      body: SafeArea(
        child: ListView(children: [
          productslider(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Category",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          category(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Sering dilihat"),
                new Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductsOverviewScreen()));
                    },
                    child: Text("Lihat semua"))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 500,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child:
                            Image.network('https://cdn.discordapp.com/attachments/1125751809055658024/1193130102016454676/81Qo1uqByfL.jpg?ex=65ab97ff&is=659922ff&hm=a26490ced76930b72c2ff7db73e46692d2d01b361efdac9b6a9973f2008180b2&'),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Goku"),
                      Text("Rp.40000")
                    ]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child:
                            Image.network(''),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Iron Man"),
                      Text("Rp.10000000")
                    ]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child:
                            Image.network('https://picsum.photos/250?image=9'),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("naruto"),
                      Text("Rp.23000")
                    ]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child:
                            Image.network('https://picsum.photos/250?image=9'),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("naruto"),
                      Text("Rp.23000")
                    ]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ]),
      ),
      bottomNavigationBar: botnav(),
    );
  }
}
