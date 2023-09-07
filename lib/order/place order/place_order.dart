import 'package:fish_n_meat/constant/constant.dart';
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:fish_n_meat/home%20page/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/popup_dialogue.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),

              //Add address button
              Center(
                child: Container(
                  height: 50.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(Constant.color)),
                  child: Center(
                    child: Text(
                      "Add Address",
                      style: CustomFonts.myStyle(
                          size: 18, weight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              //Delivery method

              Text(
                "Delivery Method",
                style: CustomFonts.myStyle(size: 22, weight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(Constant.color)),
                    child: Center(
                      child: Text(
                        "Pick up",
                        style: CustomFonts.myStyle(
                            size: 18, weight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40.0,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(Constant.color)),
                    child: Center(
                      child: Text(
                        "Home delivery",
                        style: CustomFonts.myStyle(
                            size: 18, weight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),

              //Payment method
              Text(
                "Payment Method",
                style: CustomFonts.myStyle(size: 22, weight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(Constant.color)),
                    child: Center(
                      child: Text(
                        "Online payment",
                        style: CustomFonts.myStyle(
                            size: 18, weight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40.0,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(Constant.color)),
                    child: Center(
                      child: Text(
                        "Cash on delivery",
                        style: CustomFonts.myStyle(
                            size: 18, weight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),

              //Bill details

              Text(
                "Bill Details",
                style: CustomFonts.myStyle(size: 22, weight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue.shade50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //sub total
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub total",
                          style: CustomFonts.myStyle(
                              size: 18, weight: FontWeight.w400),
                        ),
                        Text(
                          "৳ 1450",
                          style: CustomFonts.myStyle(
                              size: 18, weight: FontWeight.w400),
                        ),
                      ],
                    ),

                    //coupon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Enter coupon code here....",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Apply",
                              style: CustomFonts.myStyle(
                                  size: 18,
                                  weight: FontWeight.w600,
                                  color: Color(Constant.color)),
                            ),
                          ),
                        )
                      ],
                    ),

                    //total
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "total",
                          style: CustomFonts.myStyle(
                              size: 18,
                              weight: FontWeight.w400,
                              color: Colors.blueAccent),
                        ),
                        Text(
                          "৳ 1450",
                          style: CustomFonts.myStyle(
                              size: 18,
                              weight: FontWeight.w400,
                              color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              //Place order button

              GestureDetector(
                onTap: () {
                  PopupDialogue.show(
                      context: context,
                      header: "Congratulations",
                      body: "Your order has been placed",
                      footer: "Okay",
                      onTap: ()=> Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage())));

                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(Constant.color),
                  ),
                  child: Center(
                    child: Text(
                      "Place order",
                      style: CustomFonts.myStyle(
                          size: 18, weight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
