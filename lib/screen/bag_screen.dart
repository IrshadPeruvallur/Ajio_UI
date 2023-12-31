import 'package:ajio_app/screen/wish_list.dart';
import 'package:ajio_app/widget/widget.dart';
import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget {
  BagScreen({Key? key}) : super(key: key);

  final bagList = [
    bagItems('asset/b9.png', 'Max', 'Men Slim Fit Polo', 350, 449, 22, 99, 1),
    bagItems('asset/b8.png', 'Max', 'Men Slim Fit Polo', 350, 449, 22, 99, 1),
    bagItems('asset/b9.png', 'Max', 'Men Slim Fit Polo', 350, 449, 22, 99, 1),
    // bagItems('asset/b9.png', 'Max', 'Men Slim Fit Polo', 350, 449, 22, 99, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WishListScreen(),
                ),
              );
            },
            icon: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bag (Products)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Image(image: AssetImage('asset/d1.PNG')),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => bagList[index],
                    itemCount: bagList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                  ),
                  Center(
                      child: Text(
                    'Assured Quality | 100% Handpicked | Easy Exchange',
                    style: TextStyle(fontSize: 9),
                  )),
                ],
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              title: Text('Apply coupon'),
              leading: Icon(Icons.redeem),
              trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Select',
                    style: TextStyle(color: Colors.blue),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Order Payment Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order Amount',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('Order Saving',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('Delivery Fee',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('Fulfiment Fee',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('Order Total',
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('₹1148.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('₹99.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('₹99.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text('₹29.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11)),
                            Text(
                              '₹8049.00',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
