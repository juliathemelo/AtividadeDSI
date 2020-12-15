import 'package:atividade2/Cadastro.dart';
import 'package:flutter/material.dart';
import 'package:atividade2/Recuperar.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green,
      leading: Icon(Icons.menu),
      title: Text('Página Inicial'),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: FlatButton(
            child: Icon(Icons.search),
            color: Colors.red,
            minWidth: 0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cadastro()));
            },
          ),
        ),
      ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60, 
          left: 40, 
          right: 40,
          ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 110,
              height: 110,
              child: Image.asset("assets/bsi.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Esqueci Minha Senha",
                ),
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => Recuperar(),
                  )
                  );
                },
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                        ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/bsi-white.png"),
                          height: 48,
                          width: 48,
                        ),
                      ),
                    ],
                    ),
                    onPressed: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}