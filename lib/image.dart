import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer(this.startScreen, {super.key});
  final void Function() startScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Fun Learn",
            style: TextStyle(
                fontSize: 28,
                color: Colors.white60,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple[500],
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
