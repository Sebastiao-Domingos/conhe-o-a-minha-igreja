import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/pagefinal.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int pergunta_numero = 1;
  int perguntas_certas = 0;
  @override
  Widget build(BuildContext context) {
    void verificar(int respondida, int correta) {
      if (respondida == correta) {
        print("Parabens!");
        perguntas_certas++;
      } else {
        print("Resposta incorreta!");
      }

      setState(() {
        if (pergunta_numero == 7) {
          Navigator.pushNamed(context, "/resultado",
              arguments: Argumentos(perguntas_certas));
        } else {
          pergunta_numero++;
        }
      });
    }

    List quiz = [
      {
        "pergunta": "Em que ano a igreja nova apostolica entrou em angola?",
        "respostas": ["1990", "1890", "1700", "2000"],
        "resposta_correta": 1
      },
      {
        "pergunta": "Quantos distritos tem em luanda?",
        "respostas": ["100", "60", "80", "120"],
        "resposta_correta": 4
      },
      {
        "pergunta":
            "Em quantas sub regiões está dividida a província de Luanda?",
        "respostas": ["19", "2", "6", "4"],
        "resposta_correta": 4
      },
      {
        "pergunta": "Quais são os Bispos de Luanda?",
        "respostas": [
          "Sebastião , Jonas , Manzambi, José",
          "Estevam , Almeda , Sebastião , António",
          "Estevam , Almeda , Joáo , Pedro",
          "Mário , Sergio , Eurico , Jonata"
        ],
        "resposta_correta": 4
      },
      {
        "pergunta": "Em que ano a igreja nova apostolicalica entrou em angola?",
        "respostas": ["1990", "1890", "1700", "2000"],
        "resposta_correta": 2
      },
      {
        "pergunta": "Em que ano a igreja nova apostolicalica entrou em angola?",
        "respostas": ["1990", "1890", "1700", "2000"],
        "resposta_correta": 3
      },
      {
        "pergunta": "Em que ano a igreja nova apostolicalica entrou em angola?",
        "respostas": ["1990", "1890", "1700", "2000"],
        "resposta_correta": 4
      },
      {
        "pergunta": "Em que ano a igreja nova apostolicalica entrou em angola?",
        "respostas": ["1990", "1890", "1700", "2000"],
        "resposta_correta": 2
      }
    ];
    quiz.add({
      "pergunta": "Qual foi o primeiro apostolo angolano?",
      "respostas": ["Mbuta", "Wanuque", "Pembele", "Avelino"],
      "resposta_correta": 4
    });

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Align(
            alignment: Alignment.topRight,
            child: Text("Pergunta $pergunta_numero de 10"),
          ),
          Text(
            quiz[pergunta_numero - 1]["pergunta"],
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>
                  verificar(1, quiz[pergunta_numero - 1]["resposta_correta"]),
              child: Text(
                quiz[pergunta_numero - 1]["respostas"][0],
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>
                  verificar(2, quiz[pergunta_numero - 1]["resposta_correta"]),
              child: Text(
                quiz[pergunta_numero - 1]["respostas"][1],
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>
                  verificar(3, quiz[pergunta_numero - 1]["resposta_correta"]),
              child: Text(
                quiz[pergunta_numero - 1]["respostas"][2],
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>
                  verificar(4, quiz[pergunta_numero - 1]["resposta_correta"]),
              child: Text(
                quiz[pergunta_numero - 1]["respostas"][3],
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15)),
            ),
          )
        ]),
      ),
    ));
  }
}
