import 'package:flutter/material.dart';
class answer  extends StatelessWidget {
  final Function questionindex;
  final String answertext;
  answer(this.questionindex,this.answertext);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answertext ),
          color: Colors.blue,
          textColor: Colors.white ,
          onPressed: questionindex),
    );
  }
}
