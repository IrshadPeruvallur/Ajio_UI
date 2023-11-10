import 'package:ajio_app/widget/widget.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final carouselImage1 = [
    'asset/IMG_9519.PNG',
    'asset/IMG_9520.PNG',
    'asset/IMG_9521.PNG',
    'asset/IMG_9522.PNG'
  ];
  final carouselImage2 = [
    'asset/flat of.PNG',
    'asset/puma.PNG',
    'asset/portico.PNG',
    'asset/min 40.PNG'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: buildHomeScrollBar()),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
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
                  Image(image: AssetImage('asset/100% genune.jpg')),
                  bankSlider(),
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
                            'asset/levis.png',
                          ),
                          width: 250,
                        )
                      ],
                    ),
                  ),
                  Image(image: AssetImage('asset/unheard.jpg')),
                  Carousel(
                      carouselImage: carouselImage2,
                      Height: 250,
                      width: double.infinity,
                      ViewportFraction: 1)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
