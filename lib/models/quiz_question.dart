class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;
  List<String> getshuffleanswer() {
    final SuffleAnswer = List.of(answer);
    SuffleAnswer.shuffle();
    return SuffleAnswer;
  }
}
