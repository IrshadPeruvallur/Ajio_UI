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
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context),
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
                    child: Image(
                      image: AssetImage('asset/hurry.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Carousel(
                    carouselImage: carouselImage1,
                    Height: screenSize.width * 0.6,
                    width: double.infinity,
                    ViewportFraction: 1,
                  ),
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
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/crocs.png',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/super.png',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/levis.png',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                  Image(image: AssetImage('asset/unheard.jpg')),
                  Carousel(
                    carouselImage: carouselImage2,
                    Height: screenSize.width * 0.6,
                    width: double.infinity,
                    ViewportFraction: 1,
                  ),
                  Image(image: AssetImage('asset/top daz.jpg')),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'asset/t1.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/t2.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/t3.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/t4.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'asset/t5.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/t6.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/t7.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                        Image(
                          image: AssetImage(
                            'asset/t8.avif',
                          ),
                          width: screenSize.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('asset/t12.avif')),
                  Image(image: AssetImage('asset/t13.webp')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
