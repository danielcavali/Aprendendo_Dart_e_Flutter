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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                accountName: Text('teste'),
                accountEmail: Text('teste@email.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/h');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('sair'),
              subtitle: Text('sair da sessao'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Nosso App em Flutter'),
        actions: [
          CustonSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //child: ListView(
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
