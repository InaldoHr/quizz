// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizz/views/components/botao_components.dart';
import 'package:quizz/views/components/lista_components.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  int NumPerguntas = 0;
  List perguntas = Lista.perguntas;
  int contagemCorreta = 0;

  void Atualizar(int opc) {
    setState(() {
      print("Perguntas" + " $opc");

      if (opc == perguntas[NumPerguntas]['correta']) {
        contagemCorreta++;
      }
      NumPerguntas++;
      if(NumPerguntas == 9){
        Navigator.pushNamed(context, '/resultado', arguments: contagemCorreta);
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 35, 2, 110),
        title: Text(
          'Perguntas',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                perguntas[NumPerguntas]['pergunta'],
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),

          // Botões, NumPerguntas = 0 e NumRespostas = 1

          BotaoComponents(opc: 1, texto: perguntas[NumPerguntas]['respostas'][0], callback: Atualizar),
          BotaoComponents(opc: 2, texto: perguntas[NumPerguntas]['respostas'][1], callback: Atualizar),
          BotaoComponents(opc: 3, texto: perguntas[NumPerguntas]['respostas'][2], callback: Atualizar),
          BotaoComponents(opc: 4, texto: perguntas[NumPerguntas]['respostas'][3], callback: Atualizar),

          ElevatedButton(
            onPressed: (){
              setState(() {
                print(contagemCorreta);
              });
            },
            child: Text("Ver contagem"))    
        ]),
      ),
    );
  }
}
