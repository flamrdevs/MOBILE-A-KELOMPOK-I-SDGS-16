import 'package:flutter/material.dart';

class Submission extends StatefulWidget {
  static const path = '/submission';

  @override
  _SubmissionState createState() => _SubmissionState();
}

class _SubmissionState extends State<Submission> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _messageController = new TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Submission"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(labelText: "Pesan pengajuan"),
                controller: _messageController,
                validator: (value) {
                  return value.isEmpty ? 'Pesan tidak boleh kosong' : null;
                },
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final _message = _messageController.text.toString();

                  if (_formKey.currentState.validate()) {
                    print(_message);
                  }
                },
                child: Text('Ajukan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
