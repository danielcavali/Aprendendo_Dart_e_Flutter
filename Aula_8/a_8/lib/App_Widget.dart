import 'package:a_8/App_Controller.dart';
import 'package:flutter/material.dart';

//import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: AppController.instance.dt
                  ? Brightness.dark
                  : Brightness.light),
          home: LoginPage(),
        );
      },
    );
  }
}
