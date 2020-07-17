import 'package:first_app/question.dart';
import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = const [
    {
      "questionText": "q1?",
      "answers": [
        {"text": "a1", "score": 7},
        {"text": "b1", "score": 10},
        {"text": "c1", "score": 1},
        {"text": "d1", "score": 5},
      ]
    },
    {
      "questionText": "q2?",
      "answers": [
        {"text": "a2", "score": 7},
        {"text": "b2", "score": 10},
        {"text": "c2", "score": 1},
        {"text": "d2", "score": 5},
      ]
    },
    {
      "questionText": "q3?",
      "answers": [
        {"text": "a3", "score": 7},
        {"text": "b3", "score": 10},
        {"text": "c3", "score": 1},
        {"text": "d3", "score": 5},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("we hame more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Başlık"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
