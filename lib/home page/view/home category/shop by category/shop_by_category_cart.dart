import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../custom fonts/custom_fonts.dart';

class ShopByCategoryCart extends StatelessWidget {

  const ShopByCategoryCart({Key? key, required this.categoryName, required this.image}) : super(key: key);

  final String image;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width *0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            opacity: 0.80,
            fit: BoxFit.fill
          )
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 60.0,),
            Text("Heat n Eat",
                style: CustomFonts.myStyle(
                  color: Colors.white,
                  weight: FontWeight.w400,
                  size: 18.0,
                )),
          ],
        ),
      ),
    );
  }
}
