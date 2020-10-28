import 'package:flutter/material.dart';

class AppItemDetail extends StatelessWidget {
  final int itemid;
  AppItemDetail({this.itemid});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item $itemid'),
      ),
      body: Center(
        child: Text(
          'Detail Item $itemid',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}