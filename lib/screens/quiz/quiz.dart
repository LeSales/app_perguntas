import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/question/widget/answers.dart';
import 'package:projeto_perguntas/screens/question/widget/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) answerQuestion;

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

    return Column(
      children: [
        Question(questions[selectedQuestion]['text'].toString()),
        ...answer.map((resp) {
          return Answers(
            text: resp['text'].toString(),
            onSelected: () => answerQuestion(
              int.parse(resp['point'].toString()),
            ),
          );
        }).toList()
      ],
    );
  }
}
