import 'package:flutter/material.dart';
import '../../../../custom fonts/custom_fonts.dart';
import 'alert box/alert_box.dart';

class CustomersReview extends StatelessWidget {
  const CustomersReview({Key? key}) : super(key: key);

  final String review =
      "First of all, I am uncompromising about the quality of food for my family members. I love boneless chicken from Bengal Meat. I personally like it for my children as I have good faith and trust in Bengal Meat because it provides purely antibiotic free chicken for kids' daily meal and tiffin snacks. I could also smell the difference of freshness between products of Bengal Meat and other brands. Bengal Meat has won the trust of thousands of people who search for the best quality food.";

  final String image = "assets/images/customer1.jpeg";

  final String name = "Tilottoma Dewan";

  final String designation = "Works in a multinational";

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: CustomFonts.myStyle(
                              size: 16,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        Text(
                          designation,
                          style: CustomFonts.myStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w200),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                review,
                style: const TextStyle(
                  fontFamily: "ProductSans",
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: null,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => showAlertDialog(
                        context, review, image, name, designation),
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        "....read more",
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
