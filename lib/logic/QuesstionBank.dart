class QuestionBank {
  List<Question> quizz = [
    Question(id: 1, text: "is flutter widget base?", answer: true),
    Question(id: 2, text: "to learn flutter must learn dart?", answer: true),
    Question(id: 3, text: "dart dont have list?", answer: false),
    Question(id: 4, text: "flutter isn't open source ", answer: false),
  ];
  //get current Qu
  int currentQuestion = 0;
  Question getQuestion() {
    return quizz[this.currentQuestion];
  }

  void incerment() {
    if (this.currentQuestion < this.quizz.length - 1) this.currentQuestion++;
  }

  bool checkAnswer(bool answer) {
    //0 true ==ture   --->"correct"
    //1 true == false   ->"not correct"
    if (this.quizz[currentQuestion].answer == answer)
      return true;
    else
      return false;
  }
}

class Question {
  int id;
  String text;
  bool answer;
  // int mark;
  Question({
    required this.id,
    required this.text,
    required this.answer,
  });
}
