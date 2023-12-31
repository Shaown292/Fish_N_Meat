
import 'package:fish_n_meat/home%20page/view/home%20category/popular%20items/popular_items_card.dart';
import 'package:flutter/cupertino.dart';


class PopularItemsList extends StatelessWidget {
  const PopularItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return PopularItemsCard(
              img: "assets/images/popular_items.jpg",
              productName: "Beef minute steak",
              productValue: 515.toString(),
              weight: 360.toString());
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
