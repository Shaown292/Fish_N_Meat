import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerCart extends StatelessWidget {
  final String  img;
  final String  productName;
  final String  productValue;
  final String  weight;
  const BestSellerCart(
      {Key? key,
        required this.img,
        required this.productName,
        required this.productValue,
        required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthOfTheDevice = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthOfTheDevice*0.75,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.0,
              width: 300.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fill,
                ),
              ),

            ),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                productName,
                style: CustomFonts.myStyle(
                  color: Colors.black,
                  size: 22.0,
                )
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    height: 35.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.grey.shade300
                    ),
                    child: Center(
                      child: Text(
                        "${weight}gm",
                        style:  CustomFonts.myStyle(
                          color: Colors.black,
                          size: 16.0,
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    height: 35.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Colors.grey.shade300
                    ),
                    child: Center(
                      child: Text(
                          "৳ $productValue",
                          style:  CustomFonts.myStyle(
                            color: Colors.black,
                            size: 16.0,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    height: 35.0,
                    width: 115.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xFFFFC107),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.shopping_cart),
                          Text(
                              "Add to cart",
                              style:  CustomFonts.myStyle(
                                color: Colors.black,
                                size: 16.0,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0,),


          ],
        ),
      ),
    );
  }
}