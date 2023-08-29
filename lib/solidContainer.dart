import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';

class SolidContainer extends StatelessWidget {
  const SolidContainer(this.color, {super.key});

  final Color color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: const Center(
        child: Home(),
      ),
    );
  }
}
