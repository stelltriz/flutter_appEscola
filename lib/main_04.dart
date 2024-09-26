import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart'; // classes que compoem os componentes da tela


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
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //Desativa a tarja de DEBUG
      home: Scaffold(
        appBar:AppBar(
        title: const Text("App da Turma A", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255,64,60,134),
      ) ,
      body: Center (
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text("Construindo App da Turma",style: TextStyle(fontSize: 24)
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},//Adicionaremos uma funcao de botao aqui
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200,50),
            ),
            child: Text('Clique aqui'),
             )
        ],
      )
      ),

    //acrescentar o rodape
    bottomNavigationBar: BottomAppBar(
      color: Color.fromARGB(255, 158, 155, 155),//Cor de fundo cinza claro
      child:  Padding(
      padding: const EdgeInsets.all(16.0),
      child:Text(
        'Aqui é o Rodapé',
        textAlign: TextAlign.center,
      ),

      ),
    ),
    ),
    );
}
}
