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
        ),
        Container(
          padding: const EdgeInsets.all(30),
          child: const Text(
            "Lern Flutter the fun way !!!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 80, 5, 141),
          ),
          onPressed: () {},
          child: const Text("Start Quiz"),
        )
      ],
    );
  }
}
