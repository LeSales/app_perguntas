import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result({required this.score});

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
    return Center(
      child: Text(phraseResult),
    );
  }
}
