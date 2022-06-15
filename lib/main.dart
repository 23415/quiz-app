//import 'dart:html';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerquestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionstext': 'what\s your favourite color?',
        'answer': ['black', 'blue', 'white', 'yellow'],
      },
      {
        'questionstext': 'what\s your favourite animal?',
        'answer': ['cat', 'dog', 'tiger', 'lion'],
      },
      {
        'questionstext': 'what\s your favourite food?',
        'answer': ['chicken', 'momos', 'burger', 'pizza'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my app'),
        ),
        body: Column(
          children: [
            Question(
              (_questions[_questionsIndex]['questiontext'] as String),
            ),
            ...(_questions[_questionsIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerquestion, 'answer');
            }).toList()
            // Answer(_answerquestion),
            // Answer(_answerquestion),
            // Answer(_answerquestion),
          ],
        ),
      ),
    );
  }
}
