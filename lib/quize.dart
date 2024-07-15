import 'package:flutter/material.dart';
import 'package:advance_basics/adding_image.dart';
import 'package:advance_basics/quastion.dart';
import 'package:advance_basics/data/questions_list.dart';
import 'package:advance_basics/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quizestate();
  }
}

class _Quizestate extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activestate = 'start_screen';

  /* We can use innit function 
  void initState() {
    activestate = AddingImage(switchstate);
    super.initState();
  }
 or we can use simply a function**/
  void switchstate() {
    setState(() {
      activestate = 'qustion_screen';
    });
  }

  void chooseAnswer(String answers) {
    selectedAnswer.add(answers);
    if (selectedAnswer.length == question.length) {
      setState(() {
        activestate = 'result_screen';
      });
    }
  }

  void chagepage() {
    setState(() {
      activestate = 'start_screen';
      if (selectedAnswer.length == question.length) {
        selectedAnswer = [];
      }
    });
  }

  @override
  Widget build(context) {
    Widget Screen = AddingImage(switchstate);
    if (activestate == 'start_screen') {
      Screen = AddingImage(switchstate);
    } else if (activestate == 'qustion_screen') {
      Screen = QuastuionScreen(onSelectAnswer: chooseAnswer);
    } else if (activestate == 'result_screen') {
      Screen = ResultScreen(
        choosenAnswer: selectedAnswer,
        changed: chagepage,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Screen,
        ),
      ),
    );
  }
}
