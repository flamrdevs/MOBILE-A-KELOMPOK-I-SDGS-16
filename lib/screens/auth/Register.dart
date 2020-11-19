import 'package:flutter/material.dart';
import 'package:tugas_app/helpers/Routing.dart';
import 'package:tugas_app/screens/auth/Login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Routing.fto(context, Login());
                  },
                  child: Text("Masuk"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
