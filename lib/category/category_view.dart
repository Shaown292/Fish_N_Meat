import 'package:fish_n_meat/category/category_model.dart';
import 'package:fish_n_meat/category/widget.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  CategoryModel? categoryModel;
  @override
  Widget build(BuildContext context) {


    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemCount: CategoryModel.myData.length,
        itemBuilder: (context, index){
           Map data = CategoryModel.myData[index];
          if(CategoryModel.myData.isEmpty){
            return const CircularProgressIndicator();
          }
          else{
            return CategoryWidget(productName: data['name'], img: data['image']);
          }

        });
  }
}
