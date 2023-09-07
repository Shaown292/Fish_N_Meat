

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(width/2, height+50);
    path.lineTo(width, 0);
    path.moveTo(height, width);
    path.moveTo(0, width);
    path.lineTo(0, 0);
    return path;
  }



  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
