import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhyFishNMeat extends StatelessWidget {
  const WhyFishNMeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(
          child: Text(
              "Why Fish n Meat shop?",
            style: CustomFonts.myStyle(
              size: 24,
              color: Colors.black,
              weight: FontWeight.bold
            ),
          ),
        ),
        const SizedBox(height: 10.0,),
        Text(
          "At Bengal Meat, food safety is always our priority. We maintain a strict 8 step value chain starting from animal sourcing and extending to ante-mortem, slaughtering, post-mortem, fabrication, chilling and distribution .",
          style: CustomFonts.myStyle(
              size: 16,
              color: Colors.black,
              weight: FontWeight.w300
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
