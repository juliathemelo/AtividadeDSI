import 'package:flutter/material.dart';
import 'tela.dart';


void main() {
  runApp(Atividade1());
}

class Atividade1 extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Atividade1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Atividade(),
    );
  }
}
 
class Atividade extends StatefulWidget {
  @override
  _AtividadeState createState() => _AtividadeState();
}

class _AtividadeState extends State<Atividade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Atividade Julia'),
      ),
      body: Container(
        child: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                MaterialPageRoute(
                  builder: (BuildContext context) =>  DSIApp()));
              },
              child: Text('Ir para a pagina', 
              style: TextStyle(color: Colors.white, fontSize: 20),), 
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              color: Colors.blue,
            ),
        ),
      ),     
    );
  }
}