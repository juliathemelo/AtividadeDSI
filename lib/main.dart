import 'package:flutter/material.dart';
import 'package:atividade2/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      theme: ThemeData(
        
      ),
      home: LoginPage(),
    );
  }
}

