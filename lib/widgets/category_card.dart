import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_models.dart';

class CategoryCard extends StatelessWidget {
   CategoryCard({
    super.key,
    required this.category,
    // required this.name,
  });
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(category.image, fit: BoxFit.cover,width: 200,height: 110,),
              ),
              Positioned(bottom: 47,right: 75,
              child: Text(category.CategoryName , style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
