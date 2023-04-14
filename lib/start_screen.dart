import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
              image: AssetImage('assets/images/quiz-logo.png'), width: 350),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () => {},
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
