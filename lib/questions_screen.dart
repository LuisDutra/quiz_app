import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          currentQuestion.text,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
        AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
        AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
        AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
      ],
    );
  }
}
