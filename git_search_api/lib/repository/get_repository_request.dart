import 'dart:async';
import 'dart:convert';

import 'package:git_search_api/model/repository.dart';
import 'package:http/http.dart' as http;

Future<Repository> fetchRepository(search) async {
  var url = Uri.parse('https://api.github.com/search/repositories?q=$search');
  http.Response response = await http.get(url);

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);
    return Repository.fromJson(parsed);
  } else {
    throw Exception('Failed to load repository');
  }
}
