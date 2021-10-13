import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/question/widget/answers.dart';
import 'package:projeto_perguntas/screens/question/widget/questions.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int selectedQuestion = 0;

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'text': "Qual a sua cor favorita?",
        'answer': ['Vermelho', 'Amarelo', 'Azul', 'Verde']
      },
      {
        'text': "Qual o seu animal favorito?",
        'answer': ['Macaco', 'Leão', 'Cobra', 'Papagaio']
      },
    ];

    void answerQuestion() {
      if (selectedQuestion < questions.length - 1) {
        setState(() {
          selectedQuestion++;
        });
      }
    }

    List<String> answer = questions[selectedQuestion].cast()['answer'];

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Question(
                    text: questions[selectedQuestion]['text'].toString(),
                  ),
                  ...answer
                      .map(
                          (t) => Answers(answer: t, onSelected: answerQuestion))
                      .toList(),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
