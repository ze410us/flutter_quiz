class YourAnswer {
  YourAnswer(this.question, this.yourAnswer, this.correctAnswer);

  String question;
  String yourAnswer;
  String correctAnswer;

  get isAnswerCorrect => yourAnswer.compareTo(correctAnswer);
}
