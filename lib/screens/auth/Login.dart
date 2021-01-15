import 'package:flutter/material.dart';

import 'package:tugas_app/models/UserModel.dart';
import 'package:tugas_app/screens/home/Home.dart';
import 'package:tugas_app/screens/auth/Register.dart';

import 'package:http/http.dart' as http;

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class Login extends StatefulWidget {
  static const path = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: FutureBuilder<List<UserModel>>(
          future: fetchUser(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            List<UserModel> snapshotUser = snapshot.data;

            return snapshot.hasData
                ? Container(
                    padding: EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: "Alamat email"),
                            controller: _emailController,
                            validator: (value) {
                              return value.isEmpty
                                  ? 'Alamat email tidak boleh kosong'
                                  : value.isValidEmail()
                                      ? null
                                      : 'Alamat email tidak valid';
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: "Kata sandi"),
                            controller: _passwordController,
                            validator: (value) {
                              return value.isEmpty
                                  ? 'Kata sandi tidak boleh kosong'
                                  : null;
                            },
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Text('Belum punya akun ? '),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, Register.path);
                                },
                                child: Text('Daftar',
                                    style: TextStyle(color: Colors.blue)),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              final _email = _emailController.text.toString();
                              final _password =
                                  _passwordController.text.toString();

                              if (_formKey.currentState.validate()) {
                                print(_email);
                                print(_password);

                                final user = snapshotUser
                                    .where((user) => user.email == _email)
                                    .toList();
                                if (user.length > 0 &&
                                    user[0].password == _password) {
                                  print('User found');
                                  Navigator.pushReplacementNamed(
                                      context, Home.path);
                                } else {
                                  print('User not found');
                                }
                              }
                            },
                            child: Text('Login'),
                          ),
                        ],
                      ),
                    ),
                  )
                : Center(child: CircularProgressIndicator());
          }),
    );
  }
}
