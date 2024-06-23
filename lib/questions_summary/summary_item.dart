import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({required this.itemData, super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    return Row(
      //Alinha o conteudo verticalmente no topo da linha
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer:
              itemData['user_answer'] == itemData['correct_answer'],
        ),
        const SizedBox(width: 20),
        //Limita a larguda do Row
        Expanded(
          child: Column(
            //Alinha o conteudo a esquerda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(color: Colors.blue.shade900),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
