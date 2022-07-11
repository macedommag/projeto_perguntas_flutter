// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

var perguntaSelecionada = 1;

  void responder() {

    perguntaSelecionada++;
    print('perguntaSelecionada');

  }

  @override
  Widget build(BuildContext context) {
    final List perguntas =[
      'Qual a sua cor favorita?',
      'Qual seu animal favorito'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas") ,
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas[perguntaSelecionada]),
              RaisedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              // ignore: prefer_const_constructors
              RaisedButton(
                child: Text('Resposta 2'),
                onPressed: responder,
              ),
              RaisedButton(
                child: Text('Resposta 3'),
                onPressed: responder,

              ),
            ],)
      ),
    );

  }
}
  class PerguntaApp extends StatefulWidget{

}
