import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 600.0,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayCurve: Curves.linearToEaseOut,
          viewportFraction: 1.0,
          enableInfiniteScroll: true,
        ),
        items: [
          Image.asset(
            'assets/images/image1.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/image2.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/image3.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/image4.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/image5.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/image6.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
