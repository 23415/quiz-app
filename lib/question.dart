import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Question extends StatelessWidget {
  //const question({Key? key}) : super(key: key);
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Color.fromARGB(255, 213, 33, 33)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
