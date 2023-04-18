import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),

            //expanded allows the child to take up available space - cant take more than the column or row from above
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
