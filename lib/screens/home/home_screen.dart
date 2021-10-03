import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final questions = [
    "Qual a sua cor favorita?",
    "Qual o seu animal favorito?",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: Padding(
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
    );
  }
}
