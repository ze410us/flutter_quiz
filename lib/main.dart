import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/quiz.dart';

void main() {
  runApp(const FlutterQuiz());
}

class FlutterQuiz extends StatelessWidget {
  const FlutterQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
