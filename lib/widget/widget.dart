import 'package:carousel_slider/carousel_slider.dart';
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

Widget buildHomeScrollBar() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 4),
          blurRadius: 15,
        ),
      ],
    ),
    child: Row(
      children: [
        Icon(
          Icons.home,
          color: Colors.black,
        ),
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('asset/sale.png'),
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
          backgroundImage: NetworkImage(
              'https://images.picxy.com/cache/2019/1/3/6993406ccf641d493dd1276bcfab77cb.jpg'),
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
          backgroundImage: NetworkImage(
              'https://img.freepik.com/premium-photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone_8087-3877.jpg'),
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
          backgroundImage: AssetImage('asset/kids.jpg'),
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
          backgroundImage: AssetImage('asset/jewellry.jpg'),
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
    ),
  );
}

Widget bankSlider() {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image(
              image: AssetImage('asset/rupay.jpg'),
              height: 50,
            ),
            Image(
              image: AssetImage('asset/sbi.jpg'),
              height: 50,
            ),
            Image(
              image: AssetImage('asset/sbi2.jpg'),
              height: 50,
            ),
            Image(
              image: AssetImage('asset/au.jpg'),
              height: 50,
            ),
            Image(
              image: AssetImage('asset/idfc.jpg'),
              height: 50,
            ),
            Image(
              image: AssetImage('asset/bob.jpg'),
              height: 50,
            ),
            Image(
              image: AssetImage('asset/yes bank.jpg'),
              height: 50,
            )
          ],
        ),
      ),
    ),
  );
}

Widget Carousel({
  required carouselImage,
  required double Height,
  required double width,
  required double ViewportFraction,
}) {
  return CarouselSlider.builder(
      itemCount: carouselImage.length,
      itemBuilder: (context, index, realIndex) {
        final imagePath = carouselImage[index];
        return Container(
          width: width,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        );
      },
      options: CarouselOptions(
        height: Height,
        autoPlay: true,
        viewportFraction: ViewportFraction,
        onPageChanged: (index, reason) {},
      ));
}
