import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  const Resultado({super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    final int contagemCorreta =
        ModalRoute.of(context)!.settings.arguments as int;
    String result = '';

    if (contagemCorreta == 0) {
      result = "Você não acertou nenhuma pergunta!";
    }
    if (contagemCorreta == 1) {
      result = "Você acertou 1 pergunta!";
    }
    if (contagemCorreta > 1) {
      result = "Você acertou $contagemCorreta perguntas!";
    }

    // void verificar() {
    //   setState(() {
    //     if (contagemCorreta == 0) {
    //       result = "Você não acertou nenhuma pergunta!";
    //     }
    //     if (contagemCorreta == 1) {
    //       result = "Você acertou 1 pergunta!";
    //     }
    //     if (contagemCorreta > 1) {
    //       result = "Você acertou $contagemCorreta perguntas!";
    //     }
    //   });

    // }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 35, 2, 110),
        title: Text(
          'Resultado',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            result,
            style: TextStyle(
              fontSize: 25,
            ),
          )),

          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/');
          }, child: Text("Voltar"))
        ],
      ),
    );
  }
}
