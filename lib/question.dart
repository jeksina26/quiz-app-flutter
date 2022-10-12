import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({Key? key,required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
