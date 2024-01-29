import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/widgets/home_screen.dart';
import 'package:flutter_quiz/widgets/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = HomeScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers.clear();
        activeScreen = HomeScreen(switchScreen);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz',
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: activeScreen),
      ),
    );
  }
}
