import "package:flutter_quiz_app/models/quiz_question.dart";

const questions = [
  QuizQuestion(
      'Which day is today?', ['Monday', 'Tuesday', 'Holiday', 'Christmas']),
  QuizQuestion(
      'What is the capital of France?', ['Paris', 'Berlin', 'London', 'Rome']),
  QuizQuestion('Who painted the Mona Lisa?', [
    'Leonardo da Vinci',
    'Pablo Picasso',
    'Vincent van Gogh',
    'Michelangelo'
  ]),
  QuizQuestion('What is the largest planet in our solar system?',
      ['Jupiter', 'Saturn', 'Mars', 'Earth']),
  QuizQuestion("Who wrote 'To Kill a Mockingbird'?",
      ['Harper Lee', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'Mark Twain'])
];
