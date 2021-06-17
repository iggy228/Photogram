import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  final VoidCallback showRegisterHandler;

  Login(this.showRegisterHandler);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Photogram',
              style: TextStyle(
                fontSize: 64.0,
                fontFamily: 'DancingScript'
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
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
            OutlinedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
            TextButton(
              onPressed: widget.showRegisterHandler,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
