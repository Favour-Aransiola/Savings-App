import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class UserAuth with ChangeNotifier {
  loginUser(String email, String password) async {
    final url = Uri.parse('https://raktapp.sharpali.com/api/auth');
    final response = await http.post(url,
        body: jsonEncode({
          'username': email,
          'password': password,
          'server_key': '0e2603d8db46b8f6c1fdf0988436e815'
        }));
    return response;
  }
}
