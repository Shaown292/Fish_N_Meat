import 'package:fish_n_meat/category/category_model.dart';
import 'package:fish_n_meat/category/widget.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  static List<CategoryModel> items = [
    CategoryModel(
        image : "assets/images/category2.png",
        name : "Meat"
    ),
    CategoryModel(
        image : "assets/images/category2.png",
        name : "Meat"
    ),
    CategoryModel(
        image : "assets/images/category2.png",
        name : "Meat"
    ),
    CategoryModel(
        image : "assets/images/category2.png",
        name : "Meat"
    ),
  ];
  CategoryModel? categoryModel;
  @override
  Widget build(BuildContext context) {


    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.5,
          crossAxisSpacing: 2.5,
          childAspectRatio: 0.7,
        ),
        itemCount: CategoryModel.items.length,
        itemBuilder: (context, index){
          if(CategoryModel.items.isEmpty){
            return const CircularProgressIndicator();
          }
          else{
          }
        });
  }
}
