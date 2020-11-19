import 'package:flutter/material.dart';
import 'package:tugas_app/helpers/Routing.dart';
import 'package:tugas_app/screens/auth/Register.dart';
import 'package:tugas_app/screens/home/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // validAuth
  var _username = "Username";
  var _password = "Password";

  var _loginFallback = false;

  // userInput
  var username = "";
  var password = "";

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
              child: Column(children: <Widget>[
                if (_loginFallback) Text('Username atau password salah'),
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
                RaisedButton(
                  onPressed: () {
                    if (username == _username && password == _password) {
                      Routing.lto(context, Home());
                    } else {
                      setState(() {
                        _username = "";
                        _password = "";
                        _loginFallback = true;
                      });
                    }
                  },
                  child: Text("Masuk"),
                ),
                RaisedButton(
                  onPressed: () {
                    Routing.fto(context, Register());
                  },
                  child: Text("Daftar"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
