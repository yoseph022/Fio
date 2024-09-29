import 'package:flutter/material.dart';

import 'products_overview_screen.dart';

class category extends StatelessWidget {
  const category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.indigo),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
                child: Row(
                  children: [
                    Image.network('https://64.media.tumblr.com/202917c3e9b8a04ab43bc66cf635849d/a41632580b319b6e-7c/s1280x1920/ce80d4cd6475c4af2369ffb54744706fe08ef38c.jpg',
                    height: 50,
                    width: 50),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductsOverviewScreen()));
                    }, child: Text("Anime",selectionColor: Colors.black,))
                  ],
                )
              ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.indigo),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
                child: Row(
                  children: [
                    Image.network('https://cdn.iconscout.com/icon/free/png-256/free-marvel-282124.png?f=webp',
                    height: 50,
                    width: 50),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductsOverviewScreen()));
                    }, child: Text("Marvel",selectionColor: Colors.black,))
                  ],
                )
              ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.indigo),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
                child: Row(
                  children: [
                    Image.network('https://cdn-icons-png.flaticon.com/512/1499/1499993.png',
                    height: 50,
                    width: 50),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductsOverviewScreen()));
                    }, child: Text("Gundam",selectionColor: Colors.black,))
                  ],
                )
              ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.indigo),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
                child: Row(
                  children: [
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzkA_wo3FUh09NBhGoaOAR4WEMLiuFBn4tlQ&usqp=CAU',
                    height: 50,
                    width: 50),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductsOverviewScreen()));
                    }, child: Text("Funko",selectionColor: Colors.black,))
                  ],
                )
              ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.indigo),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
                child: Row(
                  children: [
                    Image.network('https://cdn.dribbble.com/users/1047163/screenshots/5749991/kaws-stickers-dribbble.jpg',
                    height: 50,
                    width: 50),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductsOverviewScreen()));
                    }, child: Text("kaws",selectionColor: Colors.black,))
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}