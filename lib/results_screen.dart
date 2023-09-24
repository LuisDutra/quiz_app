import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text("aaaaa"),
          const Text("bbbb"),
          TextButton(
            onPressed: () {},
            child: const Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
