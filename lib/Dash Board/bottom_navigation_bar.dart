import 'package:fish_n_meat/Menu/contact%20us/contact_us.dart';
import 'package:fish_n_meat/Menu/menu_widget.dart';
import 'package:fish_n_meat/constant/constant.dart';
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:fish_n_meat/favorite%20page/favorite_page.dart';
import 'package:fish_n_meat/home%20page/view/home_page.dart';
import 'package:flutter/material.dart';
import '../Menu/my_orders.dart';
import '../Menu/my_profile.dart';
import '../Menu/sign up/sign_up.dart';
import '../category/category_view.dart';
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
    // const CustomMenu(),
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
              onTap: () => popUpMenu(),
              child: const Column(
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

  void popUpMenu() {
    showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(60)),
      ),
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                "Current App Version: 1.0.0",
                style: CustomFonts.myStyle(size: 18, weight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyProfile())),
                      child: MenuWidget(
                          categoryIcon: Icons.person_outline,
                          categoryName: "My Profile"),
                    ),
                    MenuWidget(
                        categoryIcon: Icons.star_border_outlined,
                        categoryName: "My Review"),
                    MenuWidget(
                        categoryIcon: Icons.brightness_medium_outlined,
                        categoryName: "Dark Theme"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const MenuWidget(
                        categoryIcon: Icons.group_outlined,
                        categoryName: "About us"),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const DisplayOrderScreen()));
                        },
                        child: const MenuWidget(
                            categoryIcon: Icons.shopping_cart_outlined,
                            categoryName: "My Order")),
                    const MenuWidget(
                        categoryIcon: Icons.important_devices,
                        categoryName: "Blog"),
                  ],
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MenuWidget(
                        categoryIcon: Icons.card_travel,
                        categoryName: "Purchased items"),
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContactUs())),
                      child: const MenuWidget(
                          categoryIcon: Icons.call_outlined,
                          categoryName: "Contact us"),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp())),
                      child: const MenuWidget(
                          categoryIcon: Icons.login_outlined,
                          categoryName: "LogIn"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        );
      },
    );
  }
}
