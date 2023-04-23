import 'package:advance_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:advance_basics/answere_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onSelectAnswere, super.key});

  final void Function(String answere) onSelectAnswere;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  // Widget.propertyName is used to access properties of    other classes
  var currentQuestionIndex = 0;

  void changeQuestion(String answere) {
    widget.onSelectAnswere(answere); // to get answere question

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white70,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...currentQuestion.getSuffled().map((answere) {
              return AnswereButton(
                  answereText: answere,
                  onTap: () {
                    changeQuestion(answere);
                  });
            })
            /* 
                all the below buttons will be created dynamically using above function
                            
            AnswereButton(answereText: currentQuestion.answeres[0], onTap: () {}),
            AnswereButton(answereText: currentQuestion.answeres[1], onTap: () {}),
            AnswereButton(answereText: currentQuestion.answeres[2], onTap: () {}),
            AnswereButton(answereText: currentQuestion.answeres[3], onTap: () {}),
         
          */
          ],
        ),
      ),
    );
  }
}
