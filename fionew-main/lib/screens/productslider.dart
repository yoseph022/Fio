import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class productslider extends StatefulWidget {
  @override
  State<productslider> createState() => _productsliderState();
}

class _productsliderState extends State<productslider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.indigo),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Carousel(
                images: [
                  Image.network(
                      'https://facfox.com/wp-content/uploads/orderfile/6dbdf50898f3b61d7fcbb93625373fbe/iron-man-action-figure-2.jpg'),
                  Image.network(
                      'https://1.bp.blogspot.com/-MWyOKKZl0Ro/X0YR-LLm2gI/AAAAAAAAAcM/Rb9j2LeyAF0SA6tX_-gpsL1-AoLb9THaACPcBGAYYCw/s800/1598427636988382-1.png'),
                  Image.network(
                      'https://images.stockx.com/images/KAWS-FAMILY-Figures-Set.jpg?fit=fill&bg=FFFFFF&w=480&h=320&fm=jpg&auto=compress&dpr=2&trim=color&updated_at=1625625675&q=60'),
                ],
                hasBorderRadius: true,
                radius: Radius.circular(20),
                dotBgColor: const Color.fromARGB(0, 27, 27, 27),
                dotIncreasedColor: Colors.indigo,
                animationCurve: Curves.fastLinearToSlowEaseIn,
                animationDuration: Duration(milliseconds: 800),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
