import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 24),
    );
  }
}
