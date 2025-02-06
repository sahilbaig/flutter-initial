import 'package:flutter/material.dart';
import 'package:furdle/models/catergories_model.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    var scaffold = Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Text(
            "Meow",
            textDirection: TextDirection.ltr,
          ),
          Text(
            "Meowssss",
            textDirection: TextDirection.ltr,
          ),
          SearchBar(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var category in categories)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(category.name),
                        SizedBox(width: 10),
                        Container(
                          width: 20,
                          height: 20,
                          color: category.boxColor,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
      appBar: AppBar(
          title: Text(
            "Hello there",
            style: TextStyle(color: Colors.white, fontSize: 36),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: topBar(categories[0].name)),
    );
    return scaffold;
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 40, right: 40),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.red,
            hintText: "A lot of data",
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}

GestureDetector topBar(data) {
  return GestureDetector(
    onTap: () => print(data),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(10)),
    ),
  );
}
