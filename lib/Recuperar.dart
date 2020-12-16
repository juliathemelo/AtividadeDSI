import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:atividade2/Login.dart';

class Recuperar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("assets/bsi.png"),
            ),
            SizedBox(
              height: 80,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite o Email Cadastrado",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Um código de verificação vai ser encaminhado para o email digitado acima."),
            ),
            SizedBox(
              height: 40,
            ),
            ButtonTheme(
              height:40.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text(
                  "Confirmar",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
              height:40.0,
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  )
                  );},
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightGreen,
              ),
            ),  
          ],
        ),
        ),
    );
  }
}