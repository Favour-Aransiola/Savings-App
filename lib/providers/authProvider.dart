import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class UserAuth with ChangeNotifier {
  final server = {"server_key": '0e2603d8db46b8f6c1fdf0988436e815'};
  loginUser(String email, String password) async {
    final url = Uri.parse('https://raktapp.sharpali.com/api/auth');
    var map = Map<String, dynamic>();
    map['server_key'] = '0e2603d8db46b8f6c1fdf0988436e815';
    map['username'] = email;
    map['password'] = password;

    // var body = jsonEncode({
    //   ...server,
    //   'username': email,
    //   'password': password,
    // });

    try {
      // print(body);
      // var response = await Dio().post(
      //   'https://raktapp.sharpali.com/api/auth',
      //   data: body,
      // );
      // print(response.data);
      final response = await http.post(url,
          // headers: {
          //   'Content-type': 'multipart/form-data',
          //   'Accept': 'application/json'
          // },
          body: map);
      print(map);
      return response;
    } catch (err) {
      throw Exception('Error');
    }
  }
}
