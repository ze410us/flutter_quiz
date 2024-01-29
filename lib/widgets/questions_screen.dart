import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/models/quiz_question.dart';
import 'package:flutter_quiz/widgets/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onSelectAnswer, super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();

  final void Function(String answer) onSelectAnswer;
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = questions[currentIndex];
    final shuffledAnswers = currentQuestion.answers.toList();
    shuffledAnswers.shuffle();

    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...shuffledAnswers.map((ans) => AnswerButton(
                ans,
                () => answerQuestion(ans),
              )),
        ],
      ),
    );
  }
}
