import 'package:ajio_app/tabs/account.dart';
import 'package:ajio_app/tabs/category.dart';
import 'package:ajio_app/tabs/explor.dart';
import 'package:ajio_app/tabs/home.dart';
import 'package:ajio_app/tabs/trend.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currendIndex = 0;
  final List _tabs = [
    HomeTab(),
    ExploreTab(),
    TrendTab(),
    CategoryTab(),
    AccountTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  width:
                      8), // Add some space between the icon and the TextField
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
      ),
      body: _tabs[_currendIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currendIndex,
        onTap: (int index) {
          setState(() {
            _currendIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:
                Icon(Icons.view_comfy_alt, color: Color.fromARGB(200, 0, 0, 0)),
            label: "Switch Stores",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store, color: Color.fromARGB(200, 0, 0, 0)),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_axis, color: Color.fromARGB(200, 0, 0, 0)),
            label: "TRNDin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined,
                color: Color.fromARGB(200, 0, 0, 0)),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined,
                color: Color.fromARGB(200, 0, 0, 0)),
            label: "Account",
          ),
        ],
        selectedItemColor:
            Colors.black, // Set the selected item's label color to black
        unselectedItemColor:
            Colors.black, // Set the unselected items' label color to black
        selectedFontSize: 12,
        unselectedFontSize: 10,
      ),
    );
  }
}
