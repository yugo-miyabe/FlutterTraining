import 'dart:convert';

import 'package:git_application/model/repository.dart';
import 'package:http/http.dart' as http;

Future<List<Repository>> fetchRepository(String userName) async {
  http.Response response =
      await http.get(Uri.parse('https://api.github.com/users/$userName/repos'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    //final Map<String,dynamic> map = Map<String,dynamic>.from(parsed);

    return parsed.map<Repository>((json) => Repository.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load repository');
  }
}
