import 'package:flutter/material.dart';
import 'package:advance_basics/result_screen.dart';
import 'package:flutter/widgets.dart';

class QuestionSummery extends StatelessWidget {
  QuestionSummery(this.summerydata, {super.key});
  List<Map<String, Object>> summerydata;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summerydata.map((data) {
            final quest = data['question'] as String;
            final answe = data['usesr_Answer'] as String;
            final correct = data['correct_Answer'] as String;
          
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 52, 157, 173),
                  radius: 15,
                  child: Center(
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text('\n'),
                      const Text('\n'),
                      
                       
              
            
                      Text(
                        
                        quest,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                           color: answe == correct
                                ? const Color.fromARGB(255, 58, 223, 121)
                                :const Color.fromARGB(255, 233, 69, 66),
                            borderRadius: BorderRadius.circular(8.0),
                        ),
                        width: 400,
                        alignment: Alignment.center,
                        padding:const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                        
                        child: Text(
                            answe,
                          style:const TextStyle(
                            fontSize: 18,
                            
                            color: Colors.white,
                            
                           
                          ),
                        ),
                      ),
                      const SizedBox(
                       height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                         color: const Color.fromARGB(255, 58, 223, 121),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        width: 400,
                        alignment: Alignment.center,
                        child: Text(correct,
                                        
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,               
                            )),
                      )
                          
                    ],
                    
                  )
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
