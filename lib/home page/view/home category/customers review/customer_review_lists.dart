import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../custom fonts/custom_fonts.dart';
import 'customers_review.dart';

class CustomerReviewLists extends StatefulWidget {
  const CustomerReviewLists({super.key});

  @override
  State<CustomerReviewLists> createState() => _CustomerReviewListsState();
}

class _CustomerReviewListsState extends State<CustomerReviewLists> {
  final myItems = [
    const CustomersReview(),
    const CustomersReview(),
    const CustomersReview(),
    const CustomersReview(),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Customer Testimonial",
            style: CustomFonts.myStyle(
                size: 24, color: Colors.black, weight: FontWeight.bold),
          ),
        ),

        const SizedBox(
          height: 10.0,
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            height: 200,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 2),
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                myCurrentIndex = index;
              });
            },
          ),
          items: myItems,
        ),
      ],
    );
  }
}