import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
        automaticallyImplyLeading: false,
      ),
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
                      onPressed: () {},
                      child: const Text(
                        "Botão",
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
                      onPressed: () {},
                      child: const Text(
                        "Botão",
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
                      onPressed: () {},
                      child: const Text(
                        "Botão",
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
