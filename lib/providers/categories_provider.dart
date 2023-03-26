import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _categories = [
    {
      'image': "lib/assets/icons/category1.svg",
      'title': 'Electronics',
    },
    {
      'image': "lib/assets/icons/category2.svg",
      'title': 'Fashion',
    },
    {
      'image': "lib/assets/icons/category3.svg",
      'title': 'F&B',
    },
    {
      'image': "lib/assets/icons/category4.svg",
      'title': 'Beauty',
    },
    {
      'image': "lib/assets/icons/category5.svg",
      'title': 'Deals',
    }
  ];

  List get getCategories => _categories;
}
