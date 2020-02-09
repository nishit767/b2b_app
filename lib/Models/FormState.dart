import 'package:flutter/material.dart';

class LoginFormState extends ChangeNotifier {
  bool isDoneEditing = false;


  setFormStat(bool b) {
    isDoneEditing = b;
    notifyListeners();
  }
}
