// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

var _perguntaSelecionada = 1;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;

    });

    print('_perguntaSelecionada');

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
              Text(perguntas[_perguntaSelecionada]),
              RaisedButton(
                child: Text('Resposta 1'),
                onPressed: _responder,
              ),
              // ignore: prefer_const_constructors
              RaisedButton(
                child: Text('Resposta 2'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Resposta 3'),
                onPressed: _responder,

              ),
            ],)
      ),
    );

  }
}
  class PerguntaApp extends StatefulWidget{
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}
