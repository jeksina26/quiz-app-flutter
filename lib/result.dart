import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final VoidCallback resetQuiz;

  const Result({Key? key,required this.resetQuiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Center(
            child: Text('You did it!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
          ),
          Center(
            child: FlatButton(
                onPressed: resetQuiz,
                child: Text('Reset Quiz',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15
                ),)
            ),
          )
        ],
      ),
    );
  }
}
