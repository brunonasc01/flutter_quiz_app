
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers; 

  List<String> getShuffledAnswers() {
    //O List.of cria uma nova lista em memoria
    final shuffledList = List.of(answers);
    //O shuffle embaralha a lista atual (nao produz uma nova)
    shuffledList.shuffle();
    return shuffledList;
  }
}