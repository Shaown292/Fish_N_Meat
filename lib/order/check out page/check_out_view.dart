
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:fish_n_meat/order/place%20order/place_order.dart';
import 'package:flutter/material.dart';
import '../../constant/constant.dart';
import 'checkout_widget.dart';



class CheckOutView extends StatefulWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  _CheckOutViewState createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Here we have initialized the stepper widget
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const CheckoutWidget(),
              const SizedBox(height: 20.0,),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const PlaceOrder())),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(Constant.color),
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: CustomFonts.myStyle(
                        size: 18,
                        weight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
