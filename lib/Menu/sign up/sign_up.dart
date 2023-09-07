
import 'package:fish_n_meat/constant/constant.dart';
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: ()=> Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_back, size: 28, color: Colors.black,),
              ),
            ),
            const SizedBox(height: 50.0,),
            Center(
              child: Text(
                "Welcome Back to Fish N Meat",
                style: CustomFonts.myStyle(size: 22, weight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 20.0,),
            Center(
              child: Text(
                "Login with your credentials",
                style: CustomFonts.myStyle(size: 18, weight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 50.0,),
            Text(
              "Phone Number",
              style: CustomFonts.myStyle(size: 22, weight: FontWeight.w700),
            ),
            const SizedBox(height: 10.0,),
           TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '0178136......',
              ),
            ),

            const SizedBox(height: 10.0,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Text(
            //       "Forget Password?",
            //       style: CustomFonts.myStyle(size: 16, color: Colors.blue, weight: FontWeight.w500),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 30.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(Constant.color)
              ),
              child: Center(
                child:  Text(
                  "Login",
                  style: CustomFonts.myStyle(size: 20, weight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Don't have an account?",
                  style: CustomFonts.myStyle(
                    size: 16,
                    color: Colors.grey
                  ),
                ),
                Text(
                  " Sign up",
                  style: CustomFonts.myStyle(
                      size: 16,
                      color: Colors.black,
                    weight: FontWeight.w500
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
