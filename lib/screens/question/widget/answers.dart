import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final void Function() onSelected;

  Answers({required this.answer, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelected,
        child: Text(answer),
      ),
    );
  }
}
