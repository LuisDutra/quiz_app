import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectAnswers = [];
  Widget? activeScreen;

  void restartQuiz() {
    setState(() {
      selectAnswers = [];
      activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  void initState() {
    activeScreen = Home(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectAnswers.add(answer);

    if (selectAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          choosenAnswer: selectAnswers,
          onRestart: restartQuiz,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 147, 21, 231),
              Color.fromARGB(255, 57, 1, 90),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
