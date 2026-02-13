import 'package:build_food_delivery_app_with_flutter/utilities/app_assets.dart';

class CategoryItem {
  final String id;
  final String title;
  final String imgpath;

  CategoryItem({required this.id, required this.title, required this.imgpath});
}

final List<CategoryItem> categories = [
  CategoryItem(id: "1", title: "Burger", imgpath: AppAssets.burgerIcon),
  CategoryItem(id: "2", title: "Pizza", imgpath: AppAssets.pizzaIcon),
  CategoryItem(id: "3", title: "Salad", imgpath: AppAssets.saladIcon),
  CategoryItem(id: "4", title: "Spaguett", imgpath: AppAssets.spaguettiIcon),
];
