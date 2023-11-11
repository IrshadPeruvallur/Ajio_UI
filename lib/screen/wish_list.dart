import 'package:ajio_app/widget/widget.dart';
import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  WishList({Key? key});
  final wishList = [
    buildWishlistItem(
        'asset/a4.png', 'Max', 'Men Slim Fit Polo T-Shirt', 350, 449, 22),
    buildWishlistItem(
        'asset/jewellry.jpg', 'Gold', 'Women Gold Nechalise', 35000, 45000, 12),
    buildWishlistItem('asset/b9.png', 'Watch', 'Man Watch', 4599, 5999, 25)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 5, 0, 8),
              child: Text(
                'My Wishlist',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return wishList[index];
              },
            )
          ],
        ),
      ),
    );
  }
}
