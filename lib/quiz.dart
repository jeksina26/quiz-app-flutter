import 'package:choice_demo/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {

  final List question;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz({Key? key,required this.question,required this.questionIndex,required this.answerQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Question(question: question[questionIndex]['question'] as String),
        SizedBox(height: 25,),
        ...(question[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) => // ... called spread operator used for spread list
        Answer(selectHandler:answerQuestion,answer: answer['text'] as String)               // here we user list inside list and in Listview there
        ).toList()                                                             // are two different item like question and answer
      ],
    );
  }
}
