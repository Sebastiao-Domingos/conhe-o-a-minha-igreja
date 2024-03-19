import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "QUIZ",
                          style: TextStyle(fontSize: 50, color: Colors.blue),
                        ),
                        Image(
                          image: AssetImage("assets/images/ina.png"),
                          width: 200,
                          height: 200,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/quiz");
                        },
                        child: Text(
                          "Jogar",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15)))
                  ]),
            )));
  }
}
