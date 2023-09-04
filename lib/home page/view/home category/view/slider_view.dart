
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/slider_widget.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {

  ScrollController scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) => scrollToSlide());

    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
          itemBuilder: (context, index){
        return const SliderWidget(productName: "meat", img: "assets/images/cold_cuts.png");
      }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10,);
      },),
    );
  }

  void scrollToSlide() {
    if (scrollController.hasClients) {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 25), curve: Curves.linear);
    }
  }

}
