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
        child: Column(
          children: [
            Image(image: AssetImage('asset/z1.jpg')),
            Carousel(
                carouselImage: sliderImage,
                Height: 500,
                width: double.infinity,
                ViewportFraction: 1),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
