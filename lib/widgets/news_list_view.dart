import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_models.dart';
import 'package:news_app_ui_setup/widgets/news_title.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    super.key,
  });
final List<CategoryModel> categories = [
  CategoryModel(image:'assets/FB_IMG_1692899290551.jpg', CategoryName:'محمد صلاح قرر الباقء لليفربول وأكد انه يريد الاستمرار اكثر في اوروبا لكي يحقق البالان دور'),
  CategoryModel(image:'assets/FB_IMG_1692798389262.jpg', CategoryName:'لاعبو الاهلي يعرضون طقم الاهلي الجديد بشعار الاهلي الجديد تحت رعايه شركة اديداس'),
  CategoryModel(image:'assets/FB_IMG_1693089682515.jpg', CategoryName:'إصابة خفيفه للاعب برشلونه الجديد جوندوجان وخروجه من ارضية الملعب حزينا'),
  CategoryModel(image:'assets/FB_IMG_1693091023424.jpg', CategoryName:'مدرب فانتازي يعرض دكة فريقه ويستهزئ بنفسه '),
  CategoryModel(image:'assets/FB_IMG_1692481166608.jpg', CategoryName:'استوبينيان لاعب برايتون يتألق تألق لامع ويعطي لمدربيه الثقه ف فانتازي حيث احرز هدفا وصنع هدفا ل صديقه ف الملعب ميتوما'),
  CategoryModel(image:'assets/technology.jpeg', CategoryName:'technology'),
  CategoryModel(image:'assets/FB_IMG_1692010229930.jpg', CategoryName:'باقي من الزمن تسعة اشهر على ظهور ملوك التنانين مره اخرى'),
];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
        return NewsTitle(category: categories[index],);
      },
      childCount: categories.length,
      ),
    );
  }
}
