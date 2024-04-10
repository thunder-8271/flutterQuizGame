//icon is a regular widget provided by flutter, so we can use it
//anywhere where widget is required
//icon widget takes an required positional argument
//we can use inbuilt icon class to use some predefined icons
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors
                .white, //it means text color or color of widget in foreground of outlined button class
          ),
          label: const Text(
            'Start Quiz',
          ),
        ),
      ]),
    );
  }
}
