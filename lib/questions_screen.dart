import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'The question',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(answerText: 'Answer Text', onTap: () {}),
      ],
    );
  }
}
