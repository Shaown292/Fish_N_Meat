import 'package:fish_n_meat/Menu/sign%20up/sign_up.dart';
import 'package:fish_n_meat/constant/constant.dart';
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:fish_n_meat/favorite%20page/favorite_page.dart';
import 'package:fish_n_meat/home%20page/view/home_page.dart';
import 'package:flutter/material.dart';

import '../Menu/menu.dart';
import '../category/category_view.dart';
import '../contact us/contact_us.dart';
import '../widgets/appbar/custom_app_bar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const CategoryView(),
    const FavoritePage(),
    const ContactUs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashBoardAppBar(),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(Constant.color),
        child: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget buildMyNavBar() {
    return BottomAppBar(
      notchMargin: 6,
      shape: const CircularNotchedRectangle(),
      surfaceTintColor: Colors.white,
      elevation: 5,
      color: Colors.black,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                pageIndex = 0;
                print(pageIndex);
              }),
              child: pageIndex == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Color(Constant.color),
                          size: 35,
                        ),
                        Text("Home",
                            style: CustomFonts.regularYellow(size: 18)),
                      ],
                    )
                  : const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                pageIndex = 1;
                print(pageIndex);
              }),
              child: pageIndex == 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: Color(Constant.color),
                          size: 35,
                        ),
                        Text("Categories",
                            style: CustomFonts.regularYellow(size: 18)),
                      ],
                    )
                  : const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          "Category",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                pageIndex = 2;
                print(pageIndex);
              }),
              child: pageIndex == 2
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Color(Constant.color),
                          size: 35,
                        ),
                        Text("Favorites",
                            style: CustomFonts.regularYellow(size: 18)),
                      ],
                    )
                  : const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          "Favorites",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                pageIndex = 3;

              }),
              child: pageIndex == 3
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Color(Constant.color),
                          size: 35,
                        ),
                        Text("Menu",
                            style: CustomFonts.regularYellow(size: 18)),
                      ],
                    )
                  : const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          "Menu",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}







