import 'package:choice_demo/quiz.dart';
import 'package:choice_demo/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _questionIndex = 0;
  var _score = 0;

   static const _question = [
    {
      'question': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
       ],
    },
    {
      'question': 'Who\'s your favourite instructor?',
      'answer': [
        {'text': 'Max', 'score' : 1},
        {'text': 'Leo', 'score' : 1},
        {'text': 'Laxi', 'score' : 1},
        {'text': 'Andrew', 'score' : 1},
      ],
    }
  ] as List;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if(_questionIndex < _question.length){
      print('We have more que');
    }
    print(_score);
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }

  int _index = 0;

  List name = ['a','b','c','d','e','f','g','h','i','j','l'];

  void _returnName() {
    setState(() {
      _index +=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 25),
        child: _questionIndex < _question.length ?
        Quiz(
            question: _question,
            questionIndex: _questionIndex,
            answerQuestion: _answerQuestion
        ) : Result(resetQuiz: _resetQuiz),
      ),
    );
  }
}

