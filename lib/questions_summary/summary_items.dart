import 'package:flutter/material.dart';
import 'package:advance_basics/questions_summary/question_identifers.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems({required this.itemData, super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswere =
        itemData['user_answere'] == itemData['correct_answere'];
    // print(itemData['user_answere']);
    // print(itemData['correct_answere']);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifers(
              isCorrectQuestion: isCorrectAnswere,
              questionIndex: itemData['question_index'] as int),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Correct: ${itemData['correct_answer'] as String}',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Selected: ${itemData['user_answer'] as String}',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.cyanAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
