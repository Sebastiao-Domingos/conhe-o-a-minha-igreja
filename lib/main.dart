import 'package:flutter/material.dart';
import 'package:quiz/home.dart';
import 'package:quiz/pagefinal.dart';
import 'package:quiz/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/quiz": (context) => Quiz(),
        "/resultado": (context) => PageFinal()
      },
      // onGenerateRoute: (settings) {
      //   switch (settings.name) {
      //     case "/":
      //       return MaterialPageRoute(
      //         builder: (context) => Home(),
      //       );
      //     case "/quiz":
      //       return MaterialPageRoute(
      //         builder: (context) => Quiz(),
      //       );
      //     case "/final":
      //       return MaterialPageRoute(
      //         builder: (context) => PageFinal(),
      //       );
      //   }
      // },
    );
  }
}
