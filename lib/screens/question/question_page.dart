import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/question/widget/answers.dart';
import 'package:projeto_perguntas/screens/question/widget/questions.dart';
import 'package:projeto_perguntas/screens/question/widget/result.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

final _questions = const [
  {
    'text': "Qual a sua cor favorita?",
    'answer': ['Vermelho', 'Amarelo', 'Azul', 'Verde']
  },
  {
    'text': "Qual o seu animal favorito?",
    'answer': ['Macaco', 'Leão', 'Cobra', 'Papagaio']
  },
];

class _QuestionPageState extends State<QuestionPage> {
  int _selectedQuestion = 0;

  bool get haveSelectQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      if (_selectedQuestion < _questions.length) {
        setState(() {
          _selectedQuestion++;
        });
      }
    }

    List<String> answer = haveSelectQuestion
        ? _questions[_selectedQuestion].cast()['answer']
        : [];

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
            ? Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Question(
                          text:
                              _questions[_selectedQuestion]['text'].toString(),
                          answer: answer,
                          onSelected: answerQuestion,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Result(),
      ),
    );
  }
}
