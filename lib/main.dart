import 'package:flutter/material.dart';
import 'package:quiz_app/solidContainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: SolidContainer(
          [Color.fromARGB(255, 80, 5, 141), Color.fromARGB(255, 31, 3, 54)]),
    ),
  ));
}
