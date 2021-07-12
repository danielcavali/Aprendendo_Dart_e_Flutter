import 'package:a_11/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/logologin.png'),
              ),
              Card(
                  child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'e-mail', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'senha', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (email == 'teste@email.com' && password == '1234') {
                          print('funcionou');
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          print('deu ruim aqui bicho');
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                          )),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        /*  Container(
          color: Colors.blueGrey[200],
        ),*/
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/back.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.white.withOpacity(0.07),
        ),
        _body(),
      ],
    ));
  }
}
