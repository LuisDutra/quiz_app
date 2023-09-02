import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        Container(
          padding: const EdgeInsets.all(30),
          child: const Text(
            "Learn Flutter the fun way !!!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 80, 5, 141),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {
            
          },
          label: const Text("Start Quiz"),
        ),
      ],
    );
  }
}
