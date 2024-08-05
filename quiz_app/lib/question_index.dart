import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(
      {super.key, required this.index, required this.isCorrectAnswer});

  final int index;
  final bool isCorrectAnswer;

  static const correctColor = Color.fromARGB(255, 63, 231, 164);
  static const wrongColor = Color.fromARGB(255, 239, 112, 73);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: isCorrectAnswer ? correctColor : wrongColor,
          shape: BoxShape.circle),
      child: Center(
        child: Text(
          (index + 1).toString(),
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
