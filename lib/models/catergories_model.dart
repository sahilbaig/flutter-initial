import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(CategoryModel(name: "Bix1", boxColor: Colors.amber));
    categories.add(CategoryModel(name: "Bix2", boxColor: Colors.red));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));
    categories.add(CategoryModel(name: "Bix3", boxColor: Colors.blue));

    return categories;
  }
}
