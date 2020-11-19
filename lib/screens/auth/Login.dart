import 'package:flutter/material.dart';

import 'package:tugas_app/helpers/Routing.dart';

import 'package:tugas_app/screens/auth/Register.dart';
import 'package:tugas_app/screens/home/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String validUsername = "Username";
  String validPassword = "Password";

  String message = "";
  var isError = false;

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masuk'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _loginForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
        key: _loginFormKey,
        child: Column(
          children: <Widget>[
            if (isError)
              Text(
                message,
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            if (isError) SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Username... (use "Username")',
              ),
              controller: usernameController,
              validator: (value) {
                return value.isEmpty ? 'Username tidak boleh kosong' : null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'Password... (use "Password")',
              ),
              controller: passwordController,
              validator: (value) {
                return value.isEmpty ? 'Password tidak boleh kosong' : null;
              },
            ),
            SizedBox(height: 24),
            RaisedButton(
              onPressed: () {
                if (_loginFormKey.currentState.validate()) {
                  if (usernameController.text.toString() == validUsername) {
                    if (passwordController.text.toString() == validPassword) {
                      clearController();
                      setState(() {
                        message = "";
                        isError = false;
                      });
                      Routing.lto(context, Home());
                    } else {
                      setState(() {
                        message = 'Username atau Password salah';
                        isError = true;
                      });
                    }
                  } else {
                    setState(() {
                      message = 'Username tidak ditemukan';
                      isError = true;
                    });
                  }
                }
              },
              child: Text('Masuk'),
            ),
            SizedBox(height: 8),
            Text("Atau"),
            SizedBox(height: 8),
            RaisedButton(
              onPressed: () {
                clearController();
                Routing.fto(context, Register());
              },
              child: Text('Daftar'),
            )
          ],
        ));
  }

  void clearController() {
    usernameController.clear();
    passwordController.clear();
  }
}
