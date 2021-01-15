import 'package:flutter/material.dart';

import 'package:tugas_app/screens/auth/Login.dart';

class Register extends StatefulWidget {
  static const path = '/register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Text('Sudah punya akun ? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Login.path);
                    },
                    child: Text('Masuk', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
