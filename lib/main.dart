import 'package:flutter/material.dart';
import 'package:furdle/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Some random stuffs",
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Home());
  }
}
