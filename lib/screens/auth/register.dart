import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  final VoidCallback showLoginHandler;

  Register(this.showLoginHandler);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final GlobalKey _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // username field
            TextFormField(
              decoration: InputDecoration(hintText: 'Username'),
              onChanged: (String val) => setState(() => username = val),
            ),
            SizedBox(height: 8.0),
            // password field
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (String val) => setState(() => password = val),
            ),
            SizedBox(height: 8.0),
            // confirm password field
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Repeat password'),
              onChanged: (String val) => setState(() => confirmPassword = val),
            ),
            SizedBox(height: 8.0),
            OutlinedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
