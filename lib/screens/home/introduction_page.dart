import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:projeto_perguntas/screens/home/home_screen.dart';

//import '../question_page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
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
          child: Lottie.asset('assets/lottie/33011-question.json'),
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
          child: Lottie.asset('assets/lottie/38533-timer-icons.json'),
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
          child: Lottie.asset('assets/lottie/43444-trophy-animation.json'),
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
              builder: (_) => HomePage(),
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
