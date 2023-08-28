import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_models.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';


class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
final List<CategoryModel> categories = [
  CategoryModel(image:'assets/FB_IMG_1692010229930.jpg', CategoryName:'Dragons'),
  CategoryModel(image:'assets/entertaiment.avif', CategoryName:'entertaiment'),
  CategoryModel(image:'assets/FB_IMG_1693008407280.jpg', CategoryName:'general'),
  CategoryModel(image:'assets/health.avif', CategoryName:'health'),
  CategoryModel(image:'assets/science.avif', CategoryName:'science'),
  CategoryModel(image:'assets/FB_IMG_1692798389262.jpg', CategoryName:'sports'),
  CategoryModel(image:'assets/technology.jpeg', CategoryName:'technology'),
  CategoryModel(image:'assets/FB_IMG_1693091023424.jpg', CategoryName:'football'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index],);
        },
        itemCount: categories.length,
        ),
    );
  }
}


