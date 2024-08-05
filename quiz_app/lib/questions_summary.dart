import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_index.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIndex(
                  index: (data['question_index'] as int),
                  isCorrectAnswer:
                      data['user_answer'] == data['correct_answer'],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'].toString(),
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'].toString(),
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(130, 218, 215, 139),
                              fontSize: 12),
                        ),
                        Text(
                          data['correct_answer'].toString(),
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(130, 96, 222, 142),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
