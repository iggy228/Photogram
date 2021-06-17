import 'package:flutter/material.dart';
import 'package:photo_gram/screens/auth/login.dart';
import 'package:photo_gram/screens/auth/register.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool showLogin = true;

  void showLoginHandler() => setState(() => showLogin = !showLogin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: showLogin ? Login(showLoginHandler) : Register(showLoginHandler),
      ),
    );
  }
}
