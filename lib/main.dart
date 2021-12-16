import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'neeko',
      'answers': [
        {'text': 'Lulu', 'score': 0},
        {'text': 'Jaice', 'score': 0},
        {'text': 'Viktor', 'score': 0},
        {'text': 'Neeko', 'score': 1},
      ],
    },
    {
      'questionText': 'darius',
      'answers': [
        {'text': 'Darius', 'score': 1},
        {'text': 'Ash', 'score': 0},
        {'text': 'Jinxs', 'score': 0},
        {'text': 'Leona', 'score': 0},
      ],
    },
    {
      'questionText': 'ash',
      'answers': [
        {'text': 'Ash', 'score': 1},
        {'text': 'Nazus', 'score': 0},
        {'text': 'Galio', 'score': 0},
        {'text': 'Singed', 'score': 0},
      ],
    },
    {
      'questionText': 'garen',
      'answers': [
        {'text': 'Garen', 'score': 1},
        {'text': 'Nazus', 'score': 0},
        {'text': 'Galio', 'score': 0},
        {'text': 'Singed', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quem é esse campeão?'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
