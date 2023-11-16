import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 125,
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            width: 125,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: .5)),
                            child: Center(
                              child: Text(
                                "Order Updates",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 125,
                            // color: Colors.black,

                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: .5)),
                            child: Center(
                              child: Text(
                                "Promotions",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: double.infinity,
              child: Column(
                children: [
                  Icon(
                    Icons.notifications_sharp,
                    size: 70,
                  ),
                  Text(
                    'You have no notifications',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Stay turned for exclusive offers, order status and more',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Continue Shopping'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
