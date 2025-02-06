import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({super.key});
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter : $_counter'),
        ElevatedButton(
            onPressed: _incrementCounter,
            child: Text("Press me to increase count")),
        ElevatedButton(
            onPressed: _decreaseCounter, child: Text("Decrease Counter"))
      ],
    );
  }
}
