import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
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
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // ... is a spreader - makes different individual elements from a list
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onPressed: answerQuestion,
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
