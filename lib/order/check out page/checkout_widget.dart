

import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';

import 'package:flutter/material.dart';

import '../../constant/constant.dart';


class CheckoutWidget extends StatefulWidget {
  const CheckoutWidget({Key? key}) : super(key: key);

  @override
  State<CheckoutWidget> createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: MediaQuery.of(context).size.width,
      child:  Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //product image
              Container(
                height: 80.0,
                width: 80.0,
                decoration:  BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/meat.jpg'),
                    fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              const SizedBox(width: 6,),

              //product details
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //product name
                    Text(
                        "Mutton Backleg",
                      style: CustomFonts.myStyle(
                        size: 16,
                        weight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    //product price and weight

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),

                          //product weight
                          child: Container(
                            height: 35.0,
                            width: 65.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: Colors.grey.shade300),
                            child: Center(
                              child: Text("950 gm",
                                  style: CustomFonts.myStyle(
                                    color: Colors.black,
                                    size: 14.0,
                                  )),
                            ),
                          ),
                        ),

                        //product price
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            height: 35.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: Colors.grey.shade300),
                            child: Center(
                              child: Text("৳1300",
                                  style: CustomFonts.myStyle(
                                    color: Colors.black,
                                    size: 14.0,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 6.0,),

              //counter
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Color(Constant.color)),
                    child: const Icon(
                      Icons.remove,
                      size: 18,
                    ),
                  ),

                  Text(
                    "1",
                    style: CustomFonts.myStyle(
                        size: 18, weight: FontWeight.w700),
                  ),

                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Color(Constant.color)),
                    child: const Icon(
                      Icons.add,
                      size: 18,
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 6.0,),

              //total price
              Text(
                  "৳ 1300",
                style: CustomFonts.myStyle(
                  color: Colors.blue,
                  size: 16.0
                ),
              ),

              const SizedBox(width: 6.0,),

              //delete
             Container(
               height: 20,
               width: 20,
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.grey,
               ),
               child: const Icon(Icons.delete, size: 17.0, color: Colors.red,),
             )
            ],
          ),
        ),

      ),
    );
  }
}
