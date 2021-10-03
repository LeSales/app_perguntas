import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../question_page.dart';

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
    List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        title: "Bem vindo ao Quiz!!",
        body: "Aqui você poderá testar seus conhecimentos",
        image: Center(
          child: Image(
            image: AssetImage('assets/images/quiz1.PNG'),
          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      PageViewModel(
        title: "Corra contra o tempo!!",
        body: "Seu desafio é responder correntamente dentro do tempo",
        image: Center(
          child: Image(
            image: AssetImage('assets/images/quiz2.PNG'),
          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      PageViewModel(
        title: "Seja o primeiro!!",
        body:
            "Responda tudo corretamente para obter mais pontos e ficar em primeiro lugar!!",
        image: Center(
          child: Image(
            image: AssetImage('assets/images/quiz3.PNG'),
          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: IntroductionScreen(
        pages: listPagesViewModel,
        done: const Text("done"),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => QuestionPage(),
            ),
          );
        },
        showNextButton: false,
      )

      /* Padding(
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
      ) */
      ,
    );
  }
}
