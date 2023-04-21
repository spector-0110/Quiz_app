import 'package:advance_basics/data/questions.dart';
import 'package:advance_basics/question_screen.dart';
import 'package:advance_basics/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:advance_basics/image.dart';

class Quiz extends StatefulWidget {
  @override
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = ImageViewer(switchScreen);
    super.initState();
  }

  /*  
     above init state can be removed by adding a ternary operator
         var activeScreen= 'start-screen';
       void switchScreen() {
        setState(() {
        activeScreen = 'quesetion-screen';
      });

      child:active-screen=='start-screen'? ImageViewer(switchScreen):QuestionScreen();    

    */
  List<String> selectedAnsweres = [];

  void onReStart() {
    setState(() {
      selectedAnsweres = [];
      activeScreen = QuestionScreen(onSelectAnswere: choosenAnswere);
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(onSelectAnswere: choosenAnswere);
    });
  }

  void choosenAnswere(String answere) {
    selectedAnsweres.add(answere);
    if (selectedAnsweres.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(chosenAnswers: selectedAnsweres,onRestart: onReStart,);
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.red, Colors.blue],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
