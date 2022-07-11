// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget{
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
              Text(perguntas[0]),
              RaisedButton(
                child: Text('Resposta 1'),
                onPressed: null,
              ),
              // ignore: prefer_const_constructors
              RaisedButton(
                child: Text('Resposta 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Resposta 3'),
                onPressed: null,

              ),
            ],)
      ),
    );

  }

}
