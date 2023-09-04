
import 'package:fish_n_meat/home%20page/view/home%20category/customers%20review/customer_review_lists.dart';
import 'package:fish_n_meat/home%20page/view/home%20category/popular%20items/popular_items_list.dart';
import 'package:fish_n_meat/home%20page/view/home%20category/shop%20by%20category/shop_by_category_lists.dart';
import 'package:fish_n_meat/home%20page/view/home%20category/why%20fish%20and%20meat/why_fish_n_meat.dart';
import 'package:fish_n_meat/home%20page/widget/category_name.dart';
import 'package:fish_n_meat/widgets/appbar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../custom fonts/custom_fonts.dart';
import 'bottom slider/bottom_slider.dart';
import 'home category/best deals/best_deals_list.dart';
import 'home category/best seller card/best_sellers_list.dart';
import 'home category/view/slider_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 350,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/background.jpg"),
                              fit: BoxFit.fill,
                              opacity: 0.75),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bangladesh's",
                              textAlign: TextAlign.center,
                              style: CustomFonts.regularYellow(
                                size: 36.0,
                                weight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "First & Only",
                              textAlign: TextAlign.center,
                              style: CustomFonts.regularYellow(
                                size: 28.0,
                                weight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "International Standard Abattoir",
                              textAlign: TextAlign.center,
                              style: CustomFonts.myStyle(
                                  size: 20.0,
                                  weight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                 Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: 0,
                  child: const SliderView(),
                )
              ],
            ),
            // SliderView(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/add.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const CategoryName(
                      icon: Icons.local_offer, categoryName: "Best Sellers"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const BestSellerList(),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const CategoryName(
                      icon: Icons.local_fire_department_rounded,
                      categoryName: "Best Deals"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const BestDealsList(),

                  const SizedBox(
                    height: 20.0,
                  ),
                  const CategoryName(
                      icon: Icons.workspace_premium,
                      categoryName: "Popular Items"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const PopularItemsList(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const CategoryName(
                      icon: Icons.workspace_premium,
                      categoryName: "Shop by category"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const ShopByCategoryList(),
                  const SizedBox(height: 20.0,),
                  const WhyFishNMeat(),
                  const SizedBox(height: 20.0,),
                  const MyImageSlider(),
                  const SizedBox(height: 20.0,),
                  const CustomerReviewLists(),
                  const SizedBox(height: 40.0,),
                ],
              ),
            ),
          ],
        ));
  }
}
