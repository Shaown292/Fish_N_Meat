
import 'package:flutter/material.dart';

const String _FONT_FAMILY = 'ProductSans';

class CustomFonts {

  static TextStyle regularYellow({double size = 13, Color? color, FontWeight? weight,}) {
    return TextStyle(
      fontFamily: _FONT_FAMILY,
      fontSize: size,
      color: const Color(0xFFFFC107),
      fontWeight: weight,
    );
  }


  static TextStyle myStyle({double size = 13, Color? color, FontWeight? weight,}) {
    return TextStyle(
      fontFamily: _FONT_FAMILY,
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }


}