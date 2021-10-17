import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/instruction/instruction_page.dart';
import 'package:projeto_perguntas/screens/profile/profile.dart';
import 'package:projeto_perguntas/screens/ranking/ranking_page.dart';

import '../question/question_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Quiz"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Profile(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.fireplace_sharp),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RankingPage(),
                  ),
                );
              },
            ),
          ]),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 46,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => QuestionPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "jogar",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 46,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => RankingPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Ranking",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 46,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => InstructionPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Instruções",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
