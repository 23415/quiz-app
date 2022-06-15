import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleselector;
  final String answertext;
  const Answer(this.handleselector, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        // ignore: sort_child_properties_last
        child: Text(answertext),
        onPressed: handleselector,
      ),
    );
  }
}
