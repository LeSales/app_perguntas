import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final questions = [
      "Qual a sua cor favorita?",
      "Qual o seu animal favorito?",
    ];

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
                  Text(questions[0]),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Resposta 1"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Resposta 2"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
