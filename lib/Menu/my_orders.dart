import 'dart:convert';
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:fish_n_meat/widgets/appbar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';


class DisplayOrderScreen extends StatefulWidget {
  const DisplayOrderScreen({Key? key}) : super(key: key);

  @override
  State<DisplayOrderScreen> createState() => _DisplayOrderScreenState();
}

class _DisplayOrderScreenState extends State<DisplayOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashBoardAppBar(),
      body: ListView.builder(
        itemCount: 5 ,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0, vertical: 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 1,
                child: SizedBox(
                  height: 140.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 140,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Order ID: 01",
                              style: CustomFonts.myStyle(
                                size: 14.0,
                                weight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "Date: 25-09-2023",
                              style: CustomFonts.myStyle(
                                size: 14.0,
                                weight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "Total Price: 1350",
                              style: CustomFonts.myStyle(
                                size: 14.0,
                                weight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              height: 35.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.greenAccent,
                              ),
                              child:   Center(
                                child: Text(
                                  "Delivered",
                                  style: CustomFonts.myStyle(
                                    size: 16.0,
                                    weight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                                onTap: () async {

                                },
                                child: Container(
                                  height: 30.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                    color: Color(Constant.color),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Show Invoice",
                                      style: CustomFonts.myStyle(
                                        size: 14.0,
                                        weight: FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 30.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
