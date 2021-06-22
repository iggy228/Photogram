import 'package:flutter/material.dart';
import 'package:photo_gram/models/UserId.dart';
import 'package:photo_gram/services/auth.dart';
import 'package:photo_gram/shared/validators.dart';

class Register extends StatefulWidget {

  final VoidCallback showLoginHandler;

  Register(this.showLoginHandler);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String username = '';
  String email = '';
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
              validator: validateUsername,
              decoration: InputDecoration(hintText: 'Username'),
              onChanged: (String val) => setState(() => username = val),
            ),
            SizedBox(height: 8.0),
            // email field
            TextFormField(
              validator: validateEmail,
              decoration: InputDecoration(hintText: 'E-mail'),
              onChanged: (String val) => setState(() => email = val),
            ),
            SizedBox(height: 8.0),
            // password field
            TextFormField(
              obscureText: true,
              validator: validatePassword,
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (String val) => setState(() => password = val),
            ),
            SizedBox(height: 8.0),
            // confirm password field
            TextFormField(
              obscureText: true,
              validator: validatePassword,
              decoration: InputDecoration(hintText: 'Repeat password'),
              onChanged: (String val) => setState(() => confirmPassword = val),
            ),
            SizedBox(height: 8.0),
            OutlinedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (password != confirmPassword) return;

                  UserId? userId = await AuthService().register(email, password);
                  print(userId);
                }
              },
              child: Text('Submit'),
            ),
            TextButton(
              onPressed: widget.showLoginHandler,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
