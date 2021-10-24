import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() whenResetQuiz;

  Result({required this.score, required this.whenResetQuiz});

  String get phraseResult {
    if (score < 8) {
      return 'Parabéns';
    } else if (score < 12) {
      return 'Você é bom!!';
    } else if (score < 16) {
      return 'Muito bom!';
    } else {
      return 'Excelente!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(phraseResult),
        ),
        ElevatedButton(onPressed: whenResetQuiz, child: Text('Reiniciar'))
      ],
    );
  }
}
