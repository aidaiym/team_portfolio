import 'package:team_portfolio/screens/projects/quizzApp/question.dart';

class QuestionsBrain {
  int _index = 0;

  List<Question> questions = [
    Question(
        question: ' Кыргызстандын аймагынын төрттөн үч бөлүгүн тоолор ээлейби?',
        answer: true),
    Question(question: 'Ысык-көлдүн аянты 6236 км.кв?', answer: true),
    Question(question: 'Кыргызстанда 7 область барбы?', answer: true),
    Question(question: 'Бактен Өзгөнгө караштуубу?', answer: false),
    Question(question: 'Баткен районбу?', answer: true),
  ];

  String getQuestion() {
    print(
        'questionsBrain getQuestion index: $_index and questions.length: ${questions.length}');
    if (questions.length == _index) {
      print('questionsBrain.index getQuestion null: $_index');
      return 'Аягына чыкты!';
    }

    print('questionsBrain.index getQuestion: $_index');
    return questions[_index].question;
  }

  bool getRealAnswer() {
    print('questionsBrain.index getRealAnswer: $_index');
    return questions[_index].answer;
  }

  void getNext() {
    _index++;

    print('questionsBrain.index: $_index');
  }

  String reset() {
    _index = 0;
    return getQuestion();
  }
}

final QuestionsBrain questionsBrain = QuestionsBrain();
