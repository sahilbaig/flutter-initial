import 'package:flutter/material.dart';

class MySearchbar extends StatefulWidget {
  MySearchbar({super.key});
  @override
  State<MySearchbar> createState() => _SearchState();
}

class _SearchState extends State<MySearchbar> {
  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: textController,
        ),
        ElevatedButton(
            onPressed: () {
              print(textController.text);
              setState(() {
                textController.text = "On button click ${textController.text}";
              });
            },
            child: Text("Check text Data"))
      ],
    );
  }
}
