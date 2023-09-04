import 'package:fish_n_meat/constant/constant.dart';
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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.workspace_premium,
                        color: Color(Constant.color),
                        size: 28,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text("Top of the week",
                          style: CustomFonts.myStyle(
                            color: Colors.black,
                            weight: FontWeight.w700,
                            size: 18.0,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                                productName,
                                style: CustomFonts.myStyle(
                                  color: Colors.black,
                                  weight: FontWeight.w700,
                                  size: 18.0,
                                )),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.grey.shade300),
                                  child: Center(
                                    child: Text("${weight}gm",
                                        style: CustomFonts.myStyle(
                                          color: Colors.black,
                                          size: 16.0,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  height: 35.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.grey.shade300),
                                  child: Center(
                                    child: Text("৳ $productValue",
                                        style: CustomFonts.myStyle(
                                          color: Colors.black,
                                          size: 16.0,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120.0,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage(img),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 60.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
                    color: Color(Constant.color),
                  ),
                  child: const Icon(Icons.add, size: 50.0,color: Colors.black,),
                ),
                const SizedBox(width: 5.0,),
                Container(
                  height: 35.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.shade300),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star, color: Color(Constant.color),size: 18,),
                        Text("4.7",
                            style: CustomFonts.myStyle(
                              color: Colors.black,
                              size: 16.0,
                            )),
                      ],
                    )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
