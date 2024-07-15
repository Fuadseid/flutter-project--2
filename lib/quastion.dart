import 'package:flutter/material.dart';
import 'package:advance_basics/answer_button.dart';
import 'package:advance_basics/data/questions_list.dart';
import 'package:google_fonts/google_fonts.dart'; 

class QuastuionScreen extends StatefulWidget {
  const QuastuionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answers) onSelectAnswer;

  @override
  State<QuastuionScreen> createState() {
    return _QuastuionScreenstate();
  }
}

class _QuastuionScreenstate extends State<QuastuionScreen> {
  var currentquestionindex = 0;
  void answeredindexfun(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentquestionindex += 1;
    });
  }

  @override
  Widget build(context) {
    final CurrentQuestion = question[currentquestionindex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                CurrentQuestion.text,
                style: GoogleFonts.lato(
                 color: Colors.white,
                 fontSize: 24,
                 fontWeight: FontWeight.bold,

                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...CurrentQuestion.getshuffleanswer().map((answer) {
                return AnswerButton(
                    text: answer,
                    on_tap: () {
                      answeredindexfun(answer);
                    });
              })
            ]),
      ),
    );
  }
}
