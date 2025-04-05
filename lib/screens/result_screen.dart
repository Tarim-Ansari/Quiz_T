import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int noOfQuestions;
  final int correctAnswers;
  const ResultScreen(
      {super.key,required this.correctAnswers,required this.noOfQuestions}
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Gold_Trophy.svg/800px-Gold_Trophy.svg.png",
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "SCORE: $correctAnswers/$noOfQuestions",
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
