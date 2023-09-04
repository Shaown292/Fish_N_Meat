import 'package:fish_n_meat/home%20page/view/home%20category/widget/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  final myItems = [

    const SliderWidget(productName: "Cold Cuts", img: "assets/images/cold_cuts.png"),
    const SliderWidget(productName: "Cold Cuts", img: "assets/images/category5.png"),
    const SliderWidget(productName: "Cold Cuts", img: "assets/images/category2.png"),
    const SliderWidget(productName: "Cold Cuts", img: "assets/images/category3.png"),
    const SliderWidget(productName: "Cold Cuts", img: "assets/images/category4.png"),

  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 100,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 2),
        viewportFraction: 0.2,
        aspectRatio: 2.0,
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
