import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool dt = false;
  Changetheme() {
    dt = !dt;
    notifyListeners();
  }
}
