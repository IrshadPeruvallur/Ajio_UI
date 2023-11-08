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
  final carouselImage = [
    'asset/IMG_9519.PNG',
    'asset/IMG_9520.PNG',
    'asset/IMG_9521.PNG',
    'asset/IMG_9522.PNG'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              child: Center(
                child: Text(
                  'HURRY! LAST 2 DAYS OF SALE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                      fontSize: 20),
                ),
              ),
              color: Color.fromARGB(255, 0, 72, 90)),
          CarouselSlider.builder(
              itemCount: carouselImage.length,
              itemBuilder: (context, index, realIndex) {
                final imagePath = carouselImage[index];
                return buildImage(imagePath, index);
              },
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeindex = index;
                  });
                },
              )),
        ],
      ),
    );
  }

  Widget buildImage(String imagepath, int index) => Container(
        // margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
