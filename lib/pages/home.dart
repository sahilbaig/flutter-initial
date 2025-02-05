import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            margin: EdgeInsets.only(top: 40, left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.red,
                  hintText: "A lot of data",
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      appBar: AppBar(
          title: Text(
            "Hello there",
            style: TextStyle(color: Colors.white, fontSize: 36),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: topBar()),
    );
  }
}

GestureDetector topBar() {
  return GestureDetector(
    onTap: () => print("hello"),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(10)),
    ),
  );
}
