
import 'dart:io';
import 'package:fish_n_meat/custom%20fonts/custom_fonts.dart';
import 'package:fish_n_meat/widgets/appbar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  String? imagePath;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DashBoardAppBar(),
      body: SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  imagePath != null? Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(Constant.color),width: 3),
                        image: DecorationImage(
                            image: FileImage(File(imagePath.toString()))
                        )
                    ),
                  ):
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(Constant.color),width: 3),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/profile.png")
                        )
                    ),
                  ),
                   Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Icon(
                      Icons.cloud_upload,
                      color: Color(Constant.color),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20.0,
                ),
                const Divider(
                  thickness: 2.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                GestureDetector(

                  child:  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.edit_document,
                          size: 30.0,
                          color: Color(Constant.color),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Edit",
                          style: CustomFonts.myStyle(
                            size: 24.0,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(Constant.color),
                          size: 24.0,
                        ),
                        Text(
                          "Name",
                          style: CustomFonts.myStyle(
                            size: 24.0,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 45.0,
                    ),
                    Expanded(
                      child:TextField(
                        readOnly: true,
                        controller: nameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Full Name",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                      children: [
                        Icon(
                          Icons.email,
                          color: Color(Constant.color),
                          size: 24.0,
                        ),
                        Text(
                          "E-mail",
                          style: CustomFonts.myStyle(
                            size: 24.0,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    Expanded(
                      child: TextField(
                        readOnly: true,
                        controller: emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "example@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(Constant.color),
                          size: 24.0,
                        ),
                        Text(
                          "Address",
                          style: CustomFonts.myStyle(
                            size: 24.0,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: TextField(
                        readOnly: true,
                        controller: addressController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Address",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Color(Constant.color),
                          size: 24.0,
                        ),
                        Text(
                          "Number",
                          style: CustomFonts.myStyle(
                            size: 24.0,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: TextField(
                        readOnly: true,
                        controller: phoneController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "+880178....",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  }
