import 'package:ajio_app/tabs/account.dart';
import 'package:ajio_app/tabs/category.dart';
import 'package:ajio_app/tabs/explor.dart';
import 'package:ajio_app/tabs/home.dart';
import 'package:ajio_app/tabs/trend.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currendIndex = 0;
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
      body: _tabs[currendIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currendIndex,
        onTap: (int index) {
          setState(() {
            currendIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:
                Icon(Icons.view_comfy_alt, color: Color.fromARGB(200, 0, 0, 0)),
            label: "Home",
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
            icon: Icon(Icons.list, color: Color.fromARGB(200, 0, 0, 0)),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined,
                color: Color.fromARGB(200, 0, 0, 0)),
            label: "Account",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 10,
      ),
    );
  }
}
