import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_background.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientBackground.purple(),
      ),
    );
  }
}
