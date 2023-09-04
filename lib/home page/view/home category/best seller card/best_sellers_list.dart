
import 'package:flutter/cupertino.dart';

import 'best_seller_cart.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BestSellerCart(
              img: "assets/images/best_seller.jpg",
              productName: "Chicken Nuggets",
              productValue: 250.toString(),
              weight: 250.toString());
        },
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10.0,
          );
        },
      ),
    );
  }
}
