import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor:
                      (data['user_answer'] == data['correct_answer'])
                          ? Colors.green
                          : Colors.red,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style:
                        GoogleFonts.manrope(color: Colors.black, fontSize: 17),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),

                //expanded allows the child to take up available space - cant take more than the column or row from above
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.manrope(
                          color: const Color.fromARGB(255, 216, 146, 229),
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style:
                            GoogleFonts.manrope(color: Colors.lightBlueAccent),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
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
