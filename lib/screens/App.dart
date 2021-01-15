import 'package:flutter/material.dart';

import 'package:tugas_app/Constants.dart';

import 'package:tugas_app/screens/Landing.dart';
import 'package:tugas_app/screens/auth/Register.dart';
import 'package:tugas_app/screens/auth/Login.dart';

import 'package:tugas_app/screens/home/Home.dart';
import 'package:tugas_app/screens/home/Submission.dart';
import 'package:tugas_app/screens/home/Schedule.dart';
import 'package:tugas_app/screens/home/ScheduleDetail.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.AppName,
      debugShowCheckedModeBanner: false,
      initialRoute: Landing.path,
      routes: {
        Landing.path: (context) => Landing(),
        Register.path: (context) => Register(),
        Login.path: (context) => Login(),
        Home.path: (context) => Home(),
        Submission.path: (context) => Submission(),
        Schedule.path: (context) => Schedule(),
        ScheduleDetail.path: (context) => ScheduleDetail(),
      },
    );
  }
}
