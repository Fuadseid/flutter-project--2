import 'package:flutter/material.dart';
import 'package:advance_basics/quastion.dart';



class AnswerButton extends StatelessWidget {
 const AnswerButton({
    required this.text,
    // ignore: non_constant_identifier_names
    required this.on_tap,
    super.key,
  });
  final String text;
  final void Function() on_tap;
@override
  Widget build(context) {
    return ElevatedButton(
      
      onPressed: on_tap,
      style: ElevatedButton.styleFrom(
      
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 40 ),
        backgroundColor:const Color.fromARGB(255, 40, 1, 95),
        foregroundColor: Colors.white,
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
       child: Text(text,textAlign: TextAlign.center,
       
       ),
    );
  }
}
