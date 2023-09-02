import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';

class SolidContainer extends StatelessWidget {
  const SolidContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Home(),
      ),
    );
  }
}
