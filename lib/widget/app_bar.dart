import 'package:flutter/material.dart';

Widget buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    actions: [
      Icon(
        Icons.notifications_none_outlined,
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      SizedBox(width: 15),
      Icon(
        Icons.favorite_border_outlined,
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      SizedBox(width: 15),
      Icon(
        Icons.shopping_bag_outlined,
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      SizedBox(width: 15),
    ],
    title: Container(
      color: Color.fromARGB(13, 0, 0, 0),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Image(
            image: AssetImage('asset/com.ril.ajio_1.png'),
            width: 35,
            height: 35,
          ),
          SizedBox(
              width: 8), // Add some space between the icon and the TextField
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by product, brand',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    ),
  );
}
