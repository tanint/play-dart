import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:play_dart/data/user/user.dart';

Future<List<User>> fetchUsers() async {
  final url = Uri.parse(
      'https://gist.githubusercontent.com/tanint/d93e3135eacae5e6944f6db379df4a75/raw/4b6fc8be901ed80e971c802899e55755df799543/users.jsonz');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final rawUsers = jsonDecode(response.body) as List;
    return rawUsers.map((user) => User.fromJson(user)).toList();
  } else {
    throw Exception('Failed to fetch users');
  }
}
