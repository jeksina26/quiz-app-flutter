import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String answer;

  const Answer({Key? key,required this.selectHandler,required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          selectHandler();
        },
        child: Text(answer),
        textColor: Colors.white,
        color: Colors.blue[300],
      ),
    );
  }
}
