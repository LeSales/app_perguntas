import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  Answers({required this.text, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onSelected,
      ),
    );
  }
}
