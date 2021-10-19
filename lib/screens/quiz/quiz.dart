import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/question/widget/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() answerQuestion;

  Quiz({
    required this.questions,
    required this.selectedQuestion,
    required this.answerQuestion,
  });

  bool get haveSelectQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answer =
        haveSelectQuestion ? questions[selectedQuestion].cast()['answer'] : [];

    return Center(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Question(
                text: questions[selectedQuestion]['text'].toString(),
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
    );
  }
}
