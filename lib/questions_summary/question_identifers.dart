import 'package:flutter/material.dart';

class QuestionIdentifers extends StatelessWidget {
  const QuestionIdentifers(
      {super.key,
      required this.isCorrectQuestion,
      required this.questionIndex});
  final int questionIndex;
  final bool isCorrectQuestion;
  @override
  Widget build(context) {
    final questionNumber = 1 + questionIndex;
    return Container(
      height: 25,
      width: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectQuestion ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
