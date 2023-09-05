import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "No favourite item found",
        style: CustomFonts.myStyle(size: 18, weight: FontWeight.w700),
      ),
    );
  }
}
