import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosso App em Flutter'),
      ),
      body: Center(
          child: GestureDetector(
        child: Text(
          'Aprendendo organizaçao = $contador',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        onTap: () {
          setState(() {
            contador++;
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            contador++;
          });
        },
      ),
    );
  }
}
