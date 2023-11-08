import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: buildScrollBar())),
    );
  }

  Widget buildScrollBar() {
    return Row(
      children: [
        Icon(
          Icons.home,
          color: Colors.black,
        ),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Sale",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Men",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Women",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Kids",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Jewellery",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Footwear",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Beauty",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          radius: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Home",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
      ],
    );
  }
}
