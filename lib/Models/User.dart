import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  bool isValidUser = false;
  bool isValidPass = false;

//  bool isFormDoneEditing = false;
  String emailId;
  String userName;
  String password;
  CircleAvatar userAvatar = CircleAvatar(
    backgroundImage: NetworkImage('https://picsum.photos/100/100'),
    radius: 50,
  );


  setPassStat(bool b) {
    isValidPass = b;

    notifyListeners();
  }

  setUserStat(bool b) {
    isValidUser = b;
    notifyListeners();
  }

  setUserName(String un) {
    userName = un;
    notifyListeners();
  }

  setEmail(String em) {
    emailId = em;
    notifyListeners();
  }

  setPassword(String pw) {
    password = pw;
    notifyListeners();
  }
}
