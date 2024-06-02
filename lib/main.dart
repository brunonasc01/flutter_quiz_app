import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz_home.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueAccent, //Define a cor de fundo
      body: QuizHome()
    ),
  ),);
}