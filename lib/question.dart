import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Image.asset('assets/$questionText.png'),
    );
  }
}
