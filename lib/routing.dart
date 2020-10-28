import 'package:flutter/material.dart';

class Routing {
  static to(BuildContext context, StatelessWidget widget) {
    Navigator.push(context,MaterialPageRoute(builder: (context) => widget));
  }
  static clear(BuildContext context) {
    Navigator.pop(context);
  }
}