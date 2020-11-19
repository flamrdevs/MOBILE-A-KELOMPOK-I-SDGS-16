import 'package:flutter/material.dart';
import 'package:tugas_app/screens/auth/Login.dart';
import 'package:tugas_app/Constants.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Config.AppName,
      home: Login(),
    );
  }
}
