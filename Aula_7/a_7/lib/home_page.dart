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
        actions: [
          CustonSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('clicou: $contador vezes.'),
            CustonSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('clicou: $contador vezes.'),
                CustonSwitch(),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 30,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.amber,
                ),
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.amber,
                ),
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.amber,
                ),
              ],
            )
          ],
        ),
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

class CustonSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.dt,
        onChanged: (value) {
          AppController.instance.Changetheme();
        });
  }
}
