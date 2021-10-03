import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

class QuestionApp extends StatelessWidget {
  const QuestionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomeScreen(),
    );
  }
}
