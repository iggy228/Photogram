import 'package:flutter/material.dart';
import 'package:photo_gram/models/UserId.dart';
import 'package:photo_gram/services/auth.dart';
import 'package:photo_gram/shared/validators.dart';

class Login extends StatefulWidget {

  final VoidCallback showRegisterHandler;

  Login(this.showRegisterHandler);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
      child: SingleChildScrollView(
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
              OutlinedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    UserId? userId = await AuthService().login(email, password);
                    print(userId);
                  }
                },
                child: Text('Submit'),
              ),
              TextButton(
                onPressed: widget.showRegisterHandler,
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
