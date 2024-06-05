import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final int number1;
  final int number2;

  SecondScreen({required this.number1, required this.number2});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List<int>.generate(
        (number2 - number1).abs() + 1, (index) => index + number1);

    return Scaffold(
      appBar: AppBar(
        title: Text('Number List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(numbers[index].toString()),
            );
          },
        ),
      ),
    );
  }
}