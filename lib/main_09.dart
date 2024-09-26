import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart'; // classes que compoem os componentes da tela


main(){
  runApp(Projeto01App());
}

class Projeto01App extends StatefulWidget{
  const Projeto01App ({super.key});
  @override
  Projeto01AppState createState() => Projeto01AppState();
}

class Projeto01AppState extends State<Projeto01App>{ // extendes pq e a classe pai

  String texto = 'Construindo App da Turma';
  String localSensor = ''; //armazena o texto do sensor
  String tipo = ''; //armazena o texto do sensor
  String macAddress = '';
  String latitude = '';
  String longitude = '';
  String responsavel = '';
  String observacao = '';

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _macAddressController = TextEditingController();
  final TextEditingController _latitudeController = TextEditingController();
  final TextEditingController _longitudeController = TextEditingController();
  final TextEditingController _responsavelController = TextEditingController();
  final TextEditingController _observacaoController = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    _tipoController.dispose();
    _macAddressController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _responsavelController.dispose();
    _observacaoController.dispose();

    super.dispose();
  }

  //constrtuor da claase , sempre vai estanciar aqui ou seja , sempre vai execuatr esse metodo primeiro
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
          Text(texto, style: TextStyle(fontSize: 24)
          ),
          SizedBox(height: 20),

          //aqui vamos inserir a caixa de texto de input Local do Sensor
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _controller, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Local do Sensor',
                border: OutlineInputBorder()
              ),
              maxLength: 20, //limite de caractéres para digitação
              onChanged: (value) {
                localSensor = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

          //aqui vamos inserir a caixa de texto de input Local do Sensor
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _tipoController, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Tipo do Sensor',
                border: OutlineInputBorder()
              ),
              maxLength: 20, //limite de caractéres para digitação
              onChanged: (value) {
                tipo = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _macAddressController, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Mac Address',
                border: OutlineInputBorder()
              ),
              maxLength: 14, //limite de caractéres para digitação
              onChanged: (value) {
                macAddress = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _latitudeController, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Latitude',
                border: OutlineInputBorder()
              ),
              maxLength: 20, //limite de caractéres para digitação
              onChanged: (value) {
                latitude = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _longitudeController, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Longitude',
                border: OutlineInputBorder()
              ),
              maxLength: 20, //limite de caractéres para digitação
              onChanged: (value) {
                longitude = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _responsavelController, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Responsável',
                border: OutlineInputBorder()
              ),
              maxLength: 20, //limite de caractéres para digitação
              onChanged: (value) {
                responsavel = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //espaço lateral
            child: TextField(
              controller: _observacaoController, //controlador para capturar o texto
              decoration: InputDecoration(
                labelText: 'Observação',
                border: OutlineInputBorder()
              ),
              maxLength: 100, //limite de caractéres para digitação
              onChanged: (value) {
                observacao = value; //atualiza a variável ao digitar
              },
            ),
          
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                texto = localSensor.isNotEmpty ? 'Local do Sensor : $localSensor\n' //atualiza o texto com o local do sensor
                'Tipo: $tipo\n'
                : 'Por favor, insira um local do sensor'; //mensagem 
              });//atualiza o texto ao clicar no botão

              _controller.clear(); //limpar o input
              _tipoController.clear();
              _macAddressController.clear();

            },//Adicionaremos uma funcao de botao aqui
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
