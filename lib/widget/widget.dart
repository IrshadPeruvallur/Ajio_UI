import 'package:ajio_app/screen/bag_screen.dart';
import 'package:ajio_app/screen/notification_screen.dart';
import 'package:ajio_app/screen/wish_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

buildAppBar(context) {
  var screenSize = MediaQuery.of(context).size;

  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationScreen(),
          ));
        },
        icon: Icon(
          Icons.notifications_none_outlined,
          color: Color.fromARGB(200, 0, 0, 0),
        ),
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WishListScreen(),
            ),
          );
        },
        icon: Icon(
          Icons.favorite_border_outlined,
          color: Color.fromARGB(200, 0, 0, 0),
        ),
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BagScreen(),
            ),
          );
        },
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Color.fromARGB(200, 0, 0, 0),
        ),
      ),
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
            width: screenSize.width * 0.08, // Adjust as needed
            height: screenSize.width * 0.08, // Adjust as needed
          ),
          SizedBox(
            width: screenSize.width *
                0.02, // Add some space between the icon and the TextField
          ),
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
            width:
                screenSize.width * 0.02, // Add some space after the TextField
          ),
        ],
      ),
    ),
  );
}

Widget buildHomeScrollBar() {
  return Container(
    // width: double.infinity,
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
          backgroundImage: AssetImage('asset/b7.png'),
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
          backgroundImage: AssetImage('asset/a1.jpg'),
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
          backgroundImage: AssetImage('asset/b7.png'),
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
          backgroundImage: AssetImage('asset/a1.jpg'),
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
          backgroundImage: AssetImage('asset/b7.png'),
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
          backgroundImage: AssetImage('asset/a1.jpg'),
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

exploreImage() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
        width: double.infinity,
        height: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 270,
              height: 160,
              color: Colors.black,
              child: Image(
                image: AssetImage('asset/a2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 0, 0, 4),
                        // color: Colors.yellow,
                        child: Image(
                          image: AssetImage('asset/a1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 4, 0, 0),
                        color: const Color.fromARGB(255, 52, 51, 42),
                        child: Image(
                          image: AssetImage('asset/a5.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
        width: double.infinity,
        height: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 120,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 4),
                      // color: Colors.yellow,
                      child: Image(
                        image: AssetImage('asset/a6.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 8, 0),
                      color: const Color.fromARGB(255, 52, 51, 42),
                      child: Image(
                        image: AssetImage('asset/a7.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 270,
                height: 200,
                color: Colors.black,
                child: Image(
                  image: AssetImage('asset/a9.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
        width: double.infinity,
        height: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 270,
              height: 160,
              color: Colors.black,
              child: Image(
                image: AssetImage('asset/a10.png'),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 0, 0, 4),
                        // color: Colors.yellow,
                        child: Image(
                          image: AssetImage('asset/a11.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
                        color: const Color.fromARGB(255, 52, 51, 42),
                        child: Image(
                          image: AssetImage('asset/a12.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget buildWishlistItem(String imagePath, text1, text2, prize, mrp, off) {
  return Column(
    children: [
      Container(
        // margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        width: 170,
        height: 220,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      wishListDetail(text1, text2, prize, mrp, off)
    ],
  );
}

Widget wishListDetail(text1, text2, prize, mrp, off) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text1),
      SizedBox(
        height: 5,
      ),
      Text(
        text2,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Text(
            '₹${prize} ',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          Text(
            '₹${mrp} ',
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 13,
                fontWeight: FontWeight.w300),
          ),
          Text(
            '${off}% off ',
            style: TextStyle(
                color: Colors.green, fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Icon(Icons.delete_outline_rounded),
          ),
          SizedBox(
            width: 5,
          ),
          ElevatedButton.icon(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
                  backgroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: Text("Add To Bag"))
        ],
      )
    ],
  );
}

Widget bagItems(imagePath, text1, text2, prize, mrp, off, save, itemcount) {
  return Card(
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 150,
              width: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '₹${prize}.00  ',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      ' ₹${mrp}.00 ',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '${off}%  ',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You save${save}.00 ',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
        Divider(),
        Text(
          'Remove',
          style: TextStyle(color: Colors.blue),
        ),
        SizedBox(
          height: 8,
        )
      ],
    ),
  );
}
