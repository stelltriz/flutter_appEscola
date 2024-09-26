import 'package:flutter/material.dart';

main(){
  runApp(new Projeto01App());
}

class Projeto01App extends StatelessWidget{
  Projeto01App({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App da Turma A', style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 231, 196, 255),
        ),
      )
    );
  }
}