import 'dart:convert';

import 'package:git_application/model/git_user.dart';
import 'package:http/http.dart' as http;

Future<List<GitUser>> fetchGitUser() async {
  http.Response response =
      await http.get(Uri.parse('https://api.github.com/users'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<GitUser>((json) => GitUser.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load git user');
  }
}
