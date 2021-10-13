import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/question/widget/answers.dart';

class Question extends StatelessWidget {
  final String text;
  final List<String> answer;
  final Function() onSelected;

  Question({
    required this.text,
    required this.answer,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              ...answer
                  .map((t) => Answers(answer: t, onSelected: onSelected))
                  .toList(),
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
