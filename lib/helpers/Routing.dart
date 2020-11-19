import 'package:flutter/material.dart';

class Routing {
  static fto(BuildContext context, StatefulWidget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  static lto(BuildContext context, StatelessWidget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  static clear(BuildContext context) {
    Navigator.pop(context);
  }
}
