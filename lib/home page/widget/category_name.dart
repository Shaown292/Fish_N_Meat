import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom fonts/custom_fonts.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({Key? key, required this.icon, required this.categoryName}) : super(key: key);

  final IconData icon;
  final String categoryName;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(),
              gradient:  LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.yellow.shade500, Colors.white])
          ),
          child:  Row(
            children: [
              Icon(icon, color: const Color(0xFFFFC107),),
              const SizedBox(width: 10.0,),
              Text(
                  categoryName,
                style: CustomFonts.myStyle(
                  color: Colors.black,
                  weight: FontWeight.w700,
                  size: 15
                )
              )
            ],
          ),
        ),
         const Expanded(

           child: Divider(
            color: Color(0xFFFFC107),
            thickness: 2,
        ),
         ),
      ],
    );
  }
}
