import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            elevation: 0.5,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("assets/images/best_seller.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 70.0,
              ),
              title: Text(
                  "Mutton Leg",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomFonts.myStyle(
                      size: 18,
                      weight: FontWeight.w500
                  )
              ),
              subtitle: Text(
                "1300",
                style: CustomFonts.myStyle(
                  size: 15.0,
                  weight: FontWeight.normal,
                ),
              ),
              trailing: GestureDetector(
                  onTap: (){

                  },
                  child:  Icon(
                    Icons.delete,
                    size: 25.0,
                    color: Color(Constant.color),
                  )),
            ),
          ),
        );
      },
    );
  }
}
