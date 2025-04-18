import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz , {super.key});
  
  final void Function() startQuiz ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 35),
          const StyledText('Learn Flutter the Fun Way!', 20),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.quiz_rounded),
            label: StyledText('Start Quiz', 20),
          ),
        ],
      ),
    );
  }
}
