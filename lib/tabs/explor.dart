import 'package:flutter/material.dart';
import 'package:ajio_app/widget/widget.dart';

final slideImage = [
  'asset/ajio global.PNG',
  'asset/trend.PNG',
  'asset/ajio gold.PNG',
  'asset/ajio exclusive.PNG'
];
final slideImage2 = ['asset/azorte.PNG', 'asset/gap.PNG', 'asset/luxe.PNG'];
final slideImage3 = ['asset/b2.PNG', 'asset/b3.PNG', 'asset/b4.PNG'];
final gridImage = [
  'asset/b6.png',
  'asset/b7.png',
  'asset/b8.png',
  'asset/b9.png',
  'asset/b10.png',
  'asset/b11.jpg'
];

class ExploreTab extends StatelessWidget {
  ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image(image: AssetImage('asset/fasion.PNG')),
            Carousel(
              carouselImage: slideImage,
              Height: screenSize.width * 0.8,
              width: double.infinity,
              ViewportFraction: 1,
            ),
            exploreImage(),
            Carousel(
              carouselImage: slideImage2,
              Height: screenSize.width * 0.35,
              width: double.infinity,
              ViewportFraction: 1,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.03,
                  screenSize.width * 0.03, screenSize.width * 0.03, 0),
              child: Image(image: AssetImage('asset/b1.PNG')),
            ),
            Carousel(
              carouselImage: slideImage3,
              Height: screenSize.width * 0.6,
              width: double.infinity,
              ViewportFraction: 1,
            ),
            Image(image: AssetImage('asset/b5.PNG')),
            Padding(
              padding: EdgeInsets.all(screenSize.width * 0.03),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenSize.width > 600 ? 5 : 3,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(screenSize.width * 0.03),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(gridImage[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
