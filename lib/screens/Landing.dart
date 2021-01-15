import 'package:flutter/material.dart';

import 'package:tugas_app/screens/auth/Login.dart';
import 'package:tugas_app/screens/auth/Register.dart';

import 'package:tugas_app/screens/home/Home.dart';

class Landing extends StatelessWidget {
  static const path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Login.path);
                },
                child: Text('Login'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Register.path);
                },
                child: Text('Register'),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushReplacementNamed(context, Home.path);
            //     },
            //     child: Text('Home'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
