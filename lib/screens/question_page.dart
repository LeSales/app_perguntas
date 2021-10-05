import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questions.dart';

class QuestionPage extends StatelessWidget {
  var selectedQuestion = 0;

  @override
  Widget build(BuildContext context) {
    final questions = [
      "Qual a sua cor favorita?",
      "Qual o seu animal favorito?",
    ];

    void answerQuestion() {
      selectedQuestion++;
      print(selectedQuestion);
    }

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
                    text: questions[0],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    onPressed: answerQuestion,
                    child: Text("Resposta 1"),
                  ),
                  ElevatedButton(
                    onPressed: answerQuestion,
                    child: Text("Resposta 2"),
                  ),
                  ElevatedButton(
                    onPressed: answerQuestion,
                    child: Text("Resposta 3"),
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
