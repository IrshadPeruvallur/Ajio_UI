import 'package:ajio_app/widget/widget.dart';
import 'package:flutter/material.dart';

class TrendTab extends StatelessWidget {
  TrendTab({Key? key}) : super(key: key);
  final sliderImage = [
    'asset/z2.jpg',
    'asset/z3.jpg',
    'asset/z4.jpg',
    'asset/z5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(image: AssetImage('asset/z1.jpg')),
          Carousel(
              carouselImage: sliderImage,
              Height: 500,
              width: double.infinity,
              ViewportFraction: 1),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('asset/z6.jpg')),
                    )),
                SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('asset/z7.jpg')),
                    )),
                SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('asset/z8.jpg')),
                    )),
              ],
            ),
          ),
          Image(image: AssetImage('asset/z11.jpg')),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                    height: 300,
                    child: Image(image: AssetImage('asset/z10.jpg'))),
                SizedBox(
                    height: 300,
                    child: Image(image: AssetImage('asset/z9.jpg'))),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildWishlistItem('asset/a4.png', 'Max',
                    'Men Slim Fit Polo T-Shirt', 350, 449, 22),
                SizedBox(
                  width: 20,
                ),
                buildWishlistItem('asset/jewellry.jpg', 'Gold',
                    'Women Gold Nechalise', 35000, 45000, 12),
                SizedBox(
                  width: 20,
                ),
                buildWishlistItem(
                    'asset/b9.png', 'Watch', 'Man Watch', 4599, 5999, 25),
                SizedBox(
                  width: 20,
                ),
                buildWishlistItem('asset/a4.png', 'Max',
                    'Men Slim Fit Polo T-Shirt', 350, 449, 22),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
