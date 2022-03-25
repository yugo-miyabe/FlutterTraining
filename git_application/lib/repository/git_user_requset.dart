import 'dart:convert';

import 'package:git_application/user.dart';
import 'package:http/http.dart' as http;

Future<List<User>> fetchGitUser() async {
  http.Response response =
      await http.get(Uri.parse('https://api.github.com/users'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load git user');
  }
}
