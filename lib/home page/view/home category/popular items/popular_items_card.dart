import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class PopularItemsCard extends StatelessWidget {
  final String img;
  final String productName;
  final String productValue;
  final String weight;
  const PopularItemsCard(
      {Key? key,
        required this.img,
        required this.productName,
        required this.productValue,
        required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthOfTheDevice = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                width: widthOfTheDevice * 0.70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 5,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white70),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(productName,
                              style: CustomFonts.myStyle(
                                color: Colors.black,
                                weight: FontWeight.w700,
                                size: 18.0,
                              )),
                          Text("Gross WT ${weight}gm",
                              style: CustomFonts.myStyle(
                                color: Colors.black,
                                size: 16.0,
                              )),
                        ],
                      ),
                    ),
                  )),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 35.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFFFC107),
                  ),
                  child: Center(
                    child: Text("৳ $productValue",
                        style: CustomFonts.myStyle(
                            color: Colors.black,
                            size: 16.0,
                            weight: FontWeight.w700)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
