import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final myItems = [
    Image.asset('assets/images/slider_image1.jpg'),
    Image.asset('assets/images/slider_image2.jpg'),
    Image.asset('assets/images/slider_image1.jpg'),
    Image.asset('assets/images/slider_image2.jpg'),

  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 200,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        aspectRatio: 0.6,
        viewportFraction: 0.6,
        onPageChanged: (index, reason) {
          setState(() {
            myCurrentIndex = index;
          });
        },
      ),
      items: myItems,
    );
  }
}