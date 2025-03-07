import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mcdonalds_website_clone/widgets/appbar.dart';
import 'package:mcdonalds_website_clone/widgets/footer.dart';
import 'package:mcdonalds_website_clone/widgets/image_carousel.dart';
import 'package:mcdonalds_website_clone/widgets/image_grid.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: McdoAppBar(),
        body: SingleChildScrollView(
          child: Column(children: [ImageCarousel(), ImageGrid(), Footer()]),
        ),
      ),
    );
  }
}
