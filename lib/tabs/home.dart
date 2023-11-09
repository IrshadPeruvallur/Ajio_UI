import 'package:ajio_app/widget/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int activeindex = 0;
  final carouselImage1 = [
    'asset/IMG_9519.PNG',
    'asset/IMG_9520.PNG',
    'asset/IMG_9521.PNG',
    'asset/IMG_9522.PNG'
  ];
  final carouselImage2 = ['asset/adidas.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            buildAppBar(),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: buildHomeScrollBar()),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: Image(image: AssetImage('asset/hurry.png')),
            ),
            Carousel(
                carouselImage: carouselImage1,
                Height: 250,
                width: double.infinity,
                ViewportFraction: 1),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              child: Image(image: AssetImage('asset/100% genune.jpg')),
            ),
            bankSlider(),
            SizedBox(
              child: Column(
                children: [
                  Image(image: AssetImage('asset/top on.png')),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'asset/adidas.png',
                          ),
                          width: 250,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/crocs.png',
                          ),
                          width: 250,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/super.png',
                          ),
                          width: 250,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/top on.png',
                          ),
                          width: 250,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
