import 'package:flutter/material.dart';

import 'package:tugas_app/helpers/Routing.dart';

class Submission extends StatefulWidget {
  @override
  _SubmissionState createState() => _SubmissionState();
}

class _SubmissionState extends State<Submission> {
  String pesan = "";

  String message = "";
  var isSuccess = false;

  TextEditingController messageController = new TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengajuan'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: _submissionForm(),
      ),
    );
  }

  Widget _submissionForm() {
    return Form(
        key: _loginFormKey,
        child: Column(
          children: <Widget>[
            if (isSuccess)
              Text(
                message,
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            if (isSuccess) SizedBox(height: 12),
            if (isSuccess)
              RaisedButton(
                onPressed: () {
                  Routing.clear(context);
                },
                child: Text('Kembali'),
              ),
            if (!isSuccess)
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pesan....',
                ),
                controller: messageController,
                validator: (value) {
                  return value.isEmpty ? 'Pesan tidak boleh kosong' : null;
                },
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
            if (!isSuccess) SizedBox(height: 24),
            if (!isSuccess)
              RaisedButton(
                onPressed: () {
                  if (_loginFormKey.currentState.validate()) {
                    setState(() {
                      message = "pengajuan berhasil dikirim";
                      isSuccess = true;
                    });
                    clearController();
                  } else {
                    setState(() {
                      message = "";
                      isSuccess = false;
                    });
                  }
                },
                child: Text('Ajukan'),
              ),
          ],
        ));
  }

  void clearController() {
    messageController.clear();
  }
}
