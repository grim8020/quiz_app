import 'package:flutter/material.dart';
import 'start_screen.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground(
      {super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;

  const GradientBackground.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const SafeArea(
        child: StartScreen(),
      ),
    );
  }
}
