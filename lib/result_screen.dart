import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:advance_basics/adding_image.dart';
import 'package:advance_basics/data/questions_list.dart';
import 'package:advance_basics/quastion.dart';
import 'package:advance_basics/question_summery.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advance_basics/quize.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choosenAnswer, required this.changed});
  final List<String> choosenAnswer;
  final void Function() changed;
  List<Map<String, Object>> getsummery() {
    List<Map<String, Object>> summery = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summery.add({
        'question_index': i,
        'question': question[i].text,
        'correct_Answer': question[i].answer[0],
        'usesr_Answer': choosenAnswer[i],
      });
    }
    return summery;
  }

  @override
  Widget build(context) {
    final summarydata = getsummery();
    final numberOfTotalques = summarydata.length;
    final correctanswer = summarydata.where((data) {
      return data['usesr_Answer'] == data['correct_Answer'];
    }).length;
    //  Widget Screen = AddingImage();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You Answered $correctanswer Out of $numberOfTotalques Question ',
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                color: const Color.fromARGB(255, 142, 210, 205),
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionSummery(summarydata),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: changed,
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  backgroundColor: const Color.fromARGB(255, 40, 1, 95),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              icon: const Icon(Icons.refresh),
              label: const Text(
                "Restart Quize",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
