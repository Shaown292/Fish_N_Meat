import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PopupDialogue {
  static show(
      {required BuildContext context,
      required String header,
      required String body,
      required String footer,
      required Function() onTap}) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                header,
                style: CustomFonts.myStyle(
                  size: 24,
                ),
              ),
              content: Text(
                body,
                style: CustomFonts.myStyle(
                  size: 24,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 30.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(Constant.color),
                    ),
                    child: Center(
                        child: Text(
                      footer,
                      style: CustomFonts.myStyle(
                        size: 24,
                      ),
                    )),
                  ),
                ),
              ],
            ));
  }
}
