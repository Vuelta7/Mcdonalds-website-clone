import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  ImageGrid({super.key});

  final List<String> items = [
    "assets/images/grid1.png",
    "assets/images/grid2.png",
    "assets/images/grid3.png",
    "assets/images/grid4.png",
    "assets/images/grid5.png",
    "assets/images/grid6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 660,
        width: 1000,
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 3,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(6, (index) {
            return Image.asset(items[index]);
          }),
        ),
      ),
    );
  }
}
