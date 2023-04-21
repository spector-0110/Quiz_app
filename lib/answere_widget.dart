import 'package:flutter/material.dart';

class AnswereButton extends StatelessWidget {
  final String answereText;
  final void Function() onTap;

  const AnswereButton(
      {required this.answereText, required this.onTap, super.key});

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      child: Text(answereText,textAlign: TextAlign.center,),
    );
  }
}
