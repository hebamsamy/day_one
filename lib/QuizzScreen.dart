import 'package:day_one/logic/QuesstionBank.dart';
import 'package:flutter/material.dart';

class QuizzScreen extends StatefulWidget {
  State<QuizzScreen> createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  QuestionBank mybank = QuestionBank();
  List<Icon> myMark = [];
  int totalMark = 0;
  bool isFinish = false;
  checkanswer(bool ans) {
    setState(() {
      //check answer
      if (this.mybank.checkAnswer(ans) == true) {
        this.myMark.add(Icon(
              Icons.check,
              color: Colors.green,
            ));
      } else {
        this.myMark.add(Icon(
              Icons.close,
              color: Colors.red,
            ));
      }
      //update qu number
      this.mybank.incerment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Quizz app"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              "Qu # ${this.mybank.getQuestion().id}",
              style: TextStyle(fontSize: 20, color: Colors.teal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              this.mybank.getQuestion().text,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {
                  checkanswer(true);
                  print("true button clicked");
                },
                child: Text("True"),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green),
              ),
              OutlinedButton(
                onPressed: () {
                  checkanswer(false);
                  print("false button clicked");
                },
                child: Text("False"),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.red),
              ),
            ],
          ),
          Row(
            children: this.myMark,
          )
        ]),
      ),
    );
  }
}
