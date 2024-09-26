import 'package:flutter/material.dart'; // classes que compoem os componentes da tela


main(){
  runApp(Projeto01App());
}

class Projeto01App extends  StatelessWidget{ // extendes pq e a classe pai

 const Projeto01App ({super.key}); //constrtuor da claase , sempre vai estanciar aqui ou seja , sempre vai execuatr esse metodo primeiro
  //seta como esses parametros em que se comportar e mapear os vaores

//criando outro metodo , para construir a home
//para criar a classe e carregar os componentes cria o widget
  @override
  Widget build(BuildContext context)  {
    return const MaterialApp(
      home: Text("Meu primeiro App em Flutter"),
    );
}
}