
import 'package:fish_n_meat/home%20page/view/home%20category/popular%20items/popular_items_card.dart';
import 'package:fish_n_meat/home%20page/view/home%20category/shop%20by%20category/shop_by_category_cart.dart';
import 'package:flutter/cupertino.dart';


class ShopByCategoryList extends StatelessWidget {
  const ShopByCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ShopByCategoryCart(
              image: "assets/images/shop_by_category.jpg",
              categoryName: "Beef minute steak");
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
