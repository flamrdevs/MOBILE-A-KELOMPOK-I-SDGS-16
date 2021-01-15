import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<UserModel>> fetchUser(http.Client client) async {
  final response =
      await client.get('https://flamrdevs.github.io/peperia/user.json');
  return compute(parseUser, response.body);
}

List<UserModel> parseUser(String resBody) {
  final parsed = jsonDecode(resBody).cast<Map<String, dynamic>>();

  return parsed.map<UserModel>((json) => UserModel.fromJson(json)).toList();
}

class UserModel {
  String id;
  String name;
  String email;
  String password;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> object) {
    return UserModel(
      id: object['id'] as String,
      name: object['name'] as String,
      email: object['email'] as String,
      password: object['password'] as String,
    );
  }
}
