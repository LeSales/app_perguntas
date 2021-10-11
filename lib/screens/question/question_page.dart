import 'package:flutter/material.dart';
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
      "Qual a sua cor favorita?",
      "Qual o seu animal favorito?",
    ];

    void answerQuestion() {
      if (selectedQuestion < questions.length - 1) {
        setState(() {
          selectedQuestion++;
        });
      }
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
                    text: questions[selectedQuestion],
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
