import 'package:flutter/material.dart';

import 'package:tugas_app/helpers/Routing.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String message = "";
  var isError = false;

  TextEditingController fullnameController = new TextEditingController();
  TextEditingController phonenumberController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController passwordconfirmController = new TextEditingController();

  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Daftar'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _registerForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerForm() {
    return Form(
        key: _registerFormKey,
        child: Column(
          children: <Widget>[
            if (isError)
              Text(
                message,
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            if (isError) SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Nama lengkap',
              ),
              controller: fullnameController,
              validator: (value) {
                return value.isEmpty ? 'Nama lengkap tidak boleh kosong' : null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Nomor telepon',
              ),
              controller: phonenumberController,
              validator: (value) {
                return value.isEmpty
                    ? 'Nomor telepon tidak boleh kosong'
                    : null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Username',
              ),
              controller: usernameController,
              validator: (value) {
                return value.isEmpty ? 'Username tidak boleh kosong' : null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'Password',
              ),
              controller: passwordController,
              validator: (value) {
                return value.isEmpty ? 'Password tidak boleh kosong' : null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'Konfirmasi password',
              ),
              controller: passwordconfirmController,
              validator: (value) {
                return value.isEmpty
                    ? 'Konfirmasi password tidak boleh kosong'
                    : null;
              },
            ),
            SizedBox(height: 24),
            RaisedButton(
              onPressed: () {
                if (_registerFormKey.currentState.validate()) {
                  if (passwordController.text.toString() ==
                      passwordconfirmController.text.toString()) {
                    clearController();
                    setState(() {
                      message = "";
                      isError = false;
                    });
                    Routing.clear(context);
                  } else {
                    setState(() {
                      message = "Konfirmasi password tidak sama";
                      isError = true;
                    });
                  }
                }
              },
              child: Text('Daftar'),
            ),
            SizedBox(height: 8),
            Text("Atau"),
            SizedBox(height: 8),
            RaisedButton(
              onPressed: () {
                clearController();
                Routing.clear(context);
              },
              child: Text('Login'),
            )
          ],
        ));
  }

  void clearController() {
    fullnameController.clear();
    phonenumberController.clear();
    usernameController.clear();
    passwordController.clear();
    passwordconfirmController.clear();
  }
}
