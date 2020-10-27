import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  Function answerrQuestions;
  int index;
Quiz(@required this.questions,@required this.answerrQuestions,@required this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
            questions[index]['question']
        ),
        ...(questions[index]['answer'] as List<Map<String,Object>>).map( (answer1){
          return answer(()=>answerrQuestions(answer1['score']), answer1['text']);

        }).toList()

      ],
    );
  }
}
