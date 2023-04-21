import 'package:advance_basics/data/questions.dart';
import 'package:advance_basics/questions_summary/question_identifers.dart';
import 'package:advance_basics/questions_summary/summary_items.dart';
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItems(itemData: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
