import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

class PageFinal extends StatelessWidget {
  const PageFinal({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Resumo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Align(
            alignment: Alignment.center,
            child: Text("Resultado"),
          ),
          Center(
            child: Text(
              "Você acertou\n ${argumentos.acertos} de 10 \n perguntas",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/quiz"),
              child: Text(
                "Jogar novamente",
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
