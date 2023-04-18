import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(165, 255, 255, 255),
            //Opacity is not recommended but still available for use
            //
            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 300,
            //   ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.manrope(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurpleAccent),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
