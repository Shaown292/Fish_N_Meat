import 'package:fish_n_meat/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../custom fonts/custom_fonts.dart';





  showAlertDialog(BuildContext context,String review, String image, String customerName, String customerDesignation) {


    // set up the button
    Widget closeButton = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: ()=> Navigator.pop(context),
          child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(Constant.color),
              ),
              child: const Icon(
                Icons.close,
                size: 20,
                color: Colors.black,
              )),
        ),
      ],
    );
    Widget customerImage = Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.circle
      ),
    );
    Widget name = Text(
      customerName,
      style: CustomFonts.myStyle(
          size: 16,
          color: Colors.black,
          weight: FontWeight.w400
      ),
    );
    Widget designation = Text(
      customerDesignation,
      style: CustomFonts.myStyle(
          size: 14,
          color: Colors.black,
          weight: FontWeight.w200
      ),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      icon: closeButton,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customerImage,
          const SizedBox(height: 5,),
          name,
          const SizedBox(height: 5,),
          designation,
          const SizedBox(height: 10,),

        ],
      ),
      content: Text(review),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

