import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
                opacity: 0.7,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/fish_n_meat_logo.jpeg"))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Contact us",
                        style: CustomFonts.myStyle(
                            size: 32, weight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(Constant.color)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 28,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "01214-587-456",
                                  style: CustomFonts.myStyle(
                                      size: 24, weight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 5,
                              left: 5,
                              child: Icon(
                            Icons.content_copy,
                            size: 28,
                          )),
                           Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                                  color: Colors.black
                                ),
                                child: Center(
                                  child: Text(
                                    "call now",
                                    style: CustomFonts.myStyle(
                                        size: 18, weight: FontWeight.w500, color: Colors.white),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(Constant.color)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.mail,
                                  size: 28,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "fishnmeat@gmail.com",
                                  style: CustomFonts.myStyle(
                                      size: 24, weight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                              top: 5,
                              left: 5,
                              child: Icon(
                                Icons.content_copy,
                                size: 28,
                              )),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                                    color: Colors.black
                                ),
                                child: Center(
                                  child: Text(
                                    "mail now",
                                    style: CustomFonts.myStyle(
                                        size: 18, weight: FontWeight.w500, color: Colors.white),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
