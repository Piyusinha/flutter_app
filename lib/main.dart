import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>
{
  var questions=[
    {
      'question':'Whats Your Fav Color',
      'answer':[{'text':'Black','score':10},{'text':'Red','score':5},{'text':'Green','score':8},{'text':'White','score': 0}],

    }

  ];
  var index=0;
  int fscore=0;
  void printAnswer(int score)
  {
    if(index<questions.length) {

    }
    fscore+=score;
    setState(() {
      index++;
    });
    print('answer Choosen');
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Application '),
        ),
        body:index<questions.length ?
            Quiz(questions,printAnswer,index)
            : Column(
              children:<Widget> [
                Center(child: Text("You did it bro! score: $fscore"),)
                ,FlatButton(onPressed: null, child: null)
              ],
            ),
      ),
    );
  }
}
