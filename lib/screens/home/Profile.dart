// code here
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: <Widget>[
          Container(
              child: Container(
            width: double.infinity,
            child: Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "http://sites.nicholas.duke.edu/clarklab/files/2011/01/default_profile-d80441a6f25a9a0aac354978c65c8fa9.jpg",
                    ),
                    radius: 50.0,
                  ),
                  Text(
                    "Yuli Puspita",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Nama Lengkap :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    'Yuli Puspita Dewi',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Alamat :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    'Jember',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Email :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    'yulipuspita280799@gmail.com',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No.Telp :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    '0895368413290',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "TTL :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    'Jember, 28 Juli 1999',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('Profile')),
  //     body: Container(
  //       child: Text('Profile'),
  //     ),
  //   );
  // }
}
