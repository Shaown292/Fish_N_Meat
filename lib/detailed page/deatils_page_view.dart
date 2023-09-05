import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({
    Key? key, required this.image, required this.productName, required this.productValue, required this.productQuantity,
  }) : super(key: key);

  final String image;
  final String productName;
  final String productValue;
  final String productQuantity;

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productName,
                          style: CustomFonts.myStyle(
                              size: 18, weight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(Constant.color),
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(Constant.color),
                              size: 18,
                            ),
                          ],
                        ),
                        Text(
                          "Quantity: ${widget.productQuantity}",
                          style: CustomFonts.myStyle(
                              size: 18, weight: FontWeight.w700),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              color: Color(Constant.color)),
                          child: const Icon(
                            Icons.favorite_outline,
                            size: 28,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "৳ ${widget.productValue}",
                      style: CustomFonts.myStyle(
                        size: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: Color(Constant.color)),
                            child: const Icon(
                              Icons.remove,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "1",
                            style: CustomFonts.myStyle(
                                size: 18, weight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: Color(Constant.color)),
                            child: const Icon(
                              Icons.add,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(Constant.color)),
                        child:  Text("Add to cart", style: CustomFonts.myStyle(size: 20, weight: FontWeight.w500),)
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text("Additional info", style: CustomFonts.myStyle(size: 20, weight: FontWeight.w500),),
                const SizedBox(height: 10.0,),
                Text("Mutton Whole Back Leg Bone-In ", style: CustomFonts.myStyle(size: 16, weight: FontWeight.w300),),
                const SizedBox(height: 30.0,),
                Text("Dishes: Handi Gosht, Rezala, Kacchi, Rosemary, Thyme Roast  ", style: CustomFonts.myStyle(size: 16, weight: FontWeight.w300),),
                const SizedBox(height: 50.0,),
                Text("Liked products: ", style: CustomFonts.myStyle(size: 16, weight: FontWeight.w700),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
