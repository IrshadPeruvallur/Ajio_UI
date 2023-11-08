import 'package:ajio_app/widget/widget.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildAppBar(),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: buildHomeScrollBar())
        ],
      ),
    );
  }
}
