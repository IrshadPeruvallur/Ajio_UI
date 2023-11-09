import 'package:ajio_app/widget/widget.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  ExploreTab({super.key});
  int activeIndex = 0;
  final _carouselImages = [''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildAppBar(),
    );
  }
}
