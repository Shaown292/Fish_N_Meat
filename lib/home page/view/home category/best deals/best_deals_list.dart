
import 'package:flutter/cupertino.dart';

import 'best_deals_card.dart';


class BestDealsList extends StatelessWidget {
  const BestDealsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BestDealsCard(
              img: "assets/images/best_seller.jpg",
              productName: "Chicken Nuggets",
              productValue: 250.toString(),
              weight: 250.toString());
        },
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10.0,
          );
        },
      ),
    );
  }
}
