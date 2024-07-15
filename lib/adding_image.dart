import 'package:flutter/material.dart';

class AddingImage extends StatelessWidget {
const  AddingImage(this.nextquastion,{super.key});
  @override


 final void  Function () nextquastion;
  @override
  Widget build(context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
        color:const Color.fromARGB(150, 255, 255, 255),
      ),
      const SizedBox(
        height: 50,
      ),
      const Text(
        'Learn Flutter the fun way !',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
      const SizedBox(
        height: 20,
      ),
      OutlinedButton.icon( 
        onPressed: nextquastion,
        style:  OutlinedButton.styleFrom(
          foregroundColor: Colors.white, shape:const RoundedRectangleBorder(),
        ),
        icon: const Icon(Icons.arrow_right_alt),
        label:const Text(' Start Quize'),
      )
    ]));
  }
}
