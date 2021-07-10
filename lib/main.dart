import 'package:flutter/material.dart';
import 'pc/login.dart';
import 'pc/register.dart';
import 'pc/forget_passwd.dart';

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Find-么么哒MUA",
      home: LoginPage(),
      routes:{
        "login":(context) => LoginPage(),
        "register":(context) => RegisterPage(),
        "forget_passwd": (context) => ForgetPasswordPage(),
      }
    );
  }
}


void main() {
  runApp(MainApp());
}