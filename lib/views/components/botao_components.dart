import 'package:flutter/material.dart';

class BotaoComponents extends StatefulWidget {
  const BotaoComponents(
      {super.key, required this.texto, required this.callback, required this.opc});
  final Function callback;
  final int opc;
  final String texto;

  @override
  State<BotaoComponents> createState() => _BotaoComponentsState();
}

class _BotaoComponentsState extends State<BotaoComponents> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.callback(widget.opc);
                 
                  
                });
              },
              style: TextButton.styleFrom(
                  minimumSize: Size(330, 50),
                  maximumSize: Size(330, 400),
                  foregroundColor: Colors.black,
                  backgroundColor: const Color.fromARGB(255, 226, 226, 226)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  widget.texto,
                  style: TextStyle(fontSize: 20),
                ),
              ))),
    );
  }
}

String texto = '';
