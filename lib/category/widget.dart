import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String productName;
  final String img;
  const CategoryWidget({
    Key? key,
    required this.productName,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthOfTheDevice = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient:  LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.yellow.shade500, Colors.black])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 2.0),
                Center(
                  child: Text(
                    productName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                // image: AssetImage("assets/image/11.jpg"),
                // fit: BoxFit.cover,
              ],
            ),
          )
      ),
    );

  }
}