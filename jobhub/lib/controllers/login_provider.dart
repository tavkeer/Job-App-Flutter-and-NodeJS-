import 'package:flutter/material.dart';

class LoginNotifier extends ChangeNotifier {
  bool _obsecureText = true;
  bool get obsecureText => _obsecureText;

  set obsecureText(bool? value) {
    _obsecureText = value!;
    notifyListeners();
  }
}
