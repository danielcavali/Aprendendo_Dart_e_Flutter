

import 'package:flutter/material.dart';

import 'App_Controller.dart';

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
        child: Switch(
            value: AppController.instance.dt,
            onChanged: (value) {
              AppController.instance.Changetheme();
            }),
      ),
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
