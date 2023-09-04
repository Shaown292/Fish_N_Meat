import 'package:flutter/material.dart';

class DashBoardAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DashBoardAppBar({
    Key? key,
     this.icon,
     this.leadingWidget,
    this.onEditFunction,
    this.secondaryWidget,
    this.bgColor,
  }) : super(key: key);


  final Widget? icon, leadingWidget, secondaryWidget;

  final Function()? onEditFunction;
  final Color? bgColor;

  @override
  State<DashBoardAppBar> createState() => _DashBoardAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _DashBoardAppBarState extends State<DashBoardAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      iconTheme: const IconThemeData(color: Color(0xFFFFC107)),
      // leading:
      //   Container(
      //     height: 40.0,
      //     width: 40.0,
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage("assets/images/fish_n_meat_logo.jpeg"),
      //       ),
      //     ),
      //   ),
      title:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 40.0,
          width: 40.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fish_n_meat_logo.jpeg"),
            ),
          ),
        ),
      ),
      centerTitle: false,
      // title: Text("Title"),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(Icons.search, size: 30.0,),
        ),
      ],
    );
  }
}