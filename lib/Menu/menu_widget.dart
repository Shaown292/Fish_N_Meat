

import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';

import '../constant/constant.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.categoryIcon, required this.categoryName}) : super(key: key);

  final IconData categoryIcon;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //icon
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(Constant.color).withOpacity(0.35)
            ),
            child: Center(
              child: Icon(
                categoryIcon,
                size: 40,
              ),
            ),
          ),

          const SizedBox(height: 5,),

          Text(categoryName, style: CustomFonts.myStyle(
            size: 13,
            weight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
}
