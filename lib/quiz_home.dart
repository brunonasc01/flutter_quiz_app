import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/results_screen.dart';
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
  List<String> selectAnswers = [];

  @override
  void initState() {
    super.initState();
  }

  void switchScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswers.add(answer);

    if(selectAnswers.length == questions.length) {
      setState(() {
         currentScreen = 'results-screen';
         selectAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(switchScreen);

    if (currentScreen == 'questions-screen') {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    else if (currentScreen == 'results-screen') {
      activeScreen = ResultsScreen(chosenAnswers: selectAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent, //Define a cor de fundo
        body: activeScreen,
      ),
    );
  }
}
