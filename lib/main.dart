// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizz/views/perguntas_views.dart';
import 'package:quizz/views/resultado_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz',
      
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 35, 2, 110),
          title: Text('Quizz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),),
        ),

        body: Home(),
        
      ),
      initialRoute: '/',
      routes: {
        '/perguntas': (context) => const Perguntas(),
        '/resultado': (context) => const Resultado(),
        }
      
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: EdgeInsets.all(40.0),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text('Que tal um desafio?',
          style: TextStyle(
            fontSize: 20,
          ),)),
          Center(
            child: Image(image: AssetImage('assets/images/logo.png'),
            width: 200,),
          ),
          Center(
            child: ElevatedButton(
             style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 35, 2, 110)
             ),
              onPressed: (){
                Navigator.pushNamed(context, '/perguntas');
              },
               child: Text('Iniciar')),
               
          )
        ],
           ),
     );
  }
}
