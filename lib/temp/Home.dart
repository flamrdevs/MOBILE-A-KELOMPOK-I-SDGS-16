import 'package:flutter/material.dart';
import 'package:tugas_app/helpers/Routing.dart';
import 'About.dart';
import 'Contact.dart';
import 'Items.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Team',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Yuli Puspita Dewi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('182410103002'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Muhammad Faisal Amruddin',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('182410103012'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Muhammad Izzat Rahman',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('182410103086'),
            ),
          ],
        ),
      ),
      body: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              // Routing.to(context, AppAbout());
            },
            child: const Text('About'),
          ),
          RaisedButton(
            onPressed: () {
              // Routing.to(context, AppContact());
            },
            child: const Text('Contact'),
          ),
          RaisedButton(
            onPressed: () {
              // Routing.to(context, AppItems());
            },
            child: const Text('Items'),
          ),
        ],
      ),
    );
  }
}
