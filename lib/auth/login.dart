import 'package:flutter/material.dart';
// import 'package:tugas_app/auth/Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masuk'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _inputField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _inputField() {
  return Column(children: <Widget>[
    TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Username",
      ),
      style: TextStyle(color: Colors.white),
      autofocus: false,
    ),
    Padding(
      padding: EdgeInsets.only(top: 12.0),
    ),
    TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Password",
      ),
      style: TextStyle(color: Colors.white),
      autofocus: false,
    ),
  ]);
}
