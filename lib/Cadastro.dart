import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:atividade2/Login.dart';

class Cadastro extends StatelessWidget {
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
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "*NOME",
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
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "*NOVO EMAIL",
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
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "*MATRICULA",
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
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "*NOVA SENHA",
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
            ButtonTheme(
              height:40.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text(
                  "Cadastrar",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightGreen,
              ),
            ), 
            SizedBox(
              height: 20,
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