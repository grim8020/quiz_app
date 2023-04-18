import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.manrope(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // ... is a spreader - makes different individual elements from a list
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onPressed: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onPressed: () => {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onPressed: () => {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onPressed: () => {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onPressed: () => {},
            // ),
          ],
        ),
      ),
    );
  }
}
