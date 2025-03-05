import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisExtent: 100,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          // Update the image paths to match the correct filenames
          return GridItem(image: "assets/images/grid${index + 1}.png");
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String image;
  const GridItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}
