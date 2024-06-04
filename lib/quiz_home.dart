import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizHomeState();
  }
}

class _QuizHomeState extends State<QuizHome> {
  var currentScreen = 'start-screen';

  @override
  void initState() {
    super.initState();
  }

  void switchScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(switchScreen);

    if (currentScreen == 'questions-screen') {
      activeScreen = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent, //Define a cor de fundo
        body: activeScreen,
      ),
    );
  }
}
