import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  CategoryTab({super.key});

  final cardImage = [
    'asset/c9.png',
    'asset/c10.png',
    'asset/c1.png',
    'asset/c2.png',
    'asset/c3.png',
    'asset/c4.png',
    'asset/c5.png',
    'asset/c6.png',
    'asset/c7.png',
    'asset/c8.png'
  ];

  final cardItemName = [
    "Men",
    "Women",
    "Kids",
    "Shirt",
    "Shoes",
    "Bags",
    "Beauty",
    "Accessories",
    'Jewellery',
    'Home'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Shop By Category",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: cardImage.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            cardItemName[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image(
                          image: AssetImage(cardImage[index]),
                          height: 80,
                        )
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color.fromARGB(255, 240, 235, 235),
                );
              },
              physics: ClampingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 6 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
          Image(
            image: AssetImage('asset/c11.PNG'),
          ),
        ],
      ),
    );
  }
}
