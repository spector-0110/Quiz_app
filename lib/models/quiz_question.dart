class QuizQuestion {
  const QuizQuestion(this.text, this.answeres);
  final String text;
  final List<String> answeres;

  List<String> getSuffled() {
    final suffledList = List.of(answeres);
    suffledList.shuffle();
    return suffledList;
  }
}
