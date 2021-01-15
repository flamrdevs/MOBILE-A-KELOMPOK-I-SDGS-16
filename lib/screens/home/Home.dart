import 'package:flutter/material.dart';

import 'package:tugas_app/screens/Landing.dart';
import 'package:tugas_app/screens/home/Submission.dart';
import 'package:tugas_app/screens/home/Schedule.dart';

class Home extends StatelessWidget {
  static const path = '/home';

  @override
  Widget build(BuildContext context) {
    Future<void> _showLogoutDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Keluar'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Apakah anda yakin keluar aplikasi ?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Ya'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Landing.path);
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              _showLogoutDialog();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('username@email.com'),
              currentAccountPicture: CircleAvatar(
                child: FlutterLogo(size: 42.0),
              ),
            ),
            ListTile(
              title: Text('Pengajuan'),
              onTap: () {
                Navigator.pushNamed(context, Submission.path);
              },
            ),
            ListTile(
              title: Text('Jadwal'),
              onTap: () {
                Navigator.pushNamed(context, Schedule.path);
              },
            ),
            ListTile(
              title: Text('Bantuan'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Pengaturan'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Home page'),
          ],
        ),
      ),
    );
  }
}
