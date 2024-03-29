import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/question/widget/result.dart';
import 'package:projeto_perguntas/screens/quiz/quiz.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

int _selectedQuestion = 0;
int _totalPoints = 0;

final _questions = const [
  {
    'text': "Qual a sua cor favorita?",
    'answer': [
      {
        'text': 'Vermelho',
        'point': 10,
      },
      {
        'text': 'Amarelo',
        'point': 5,
      },
      {
        'text': 'Azul',
        'point': 3,
      },
      {
        'text': 'Verde',
        'point': 1,
      },
    ],
  },
  {
    'text': "Qual o seu animal favorito?",
    'answer': [
      {
        'text': 'Macaco',
        'point': 10,
      },
      {
        'text': 'Leão',
        'point': 5,
      },
      {
        'text': 'Cobra',
        'point': 3,
      },
      {
        'text': 'Papagaio',
        'point': 1,
      },
    ],
  },
];

class _QuestionPageState extends State<QuestionPage> {
  bool get haveSelectQuestion {
    return _selectedQuestion < _questions.length;
  }

  void answerQuestion(int point) {
    if (haveSelectQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalPoints += point;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
          automaticallyImplyLeading: false,
        ),
        body: haveSelectQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                answerQuestion: answerQuestion,
              )
            : Result(
                score: _totalPoints,
                whenResetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
