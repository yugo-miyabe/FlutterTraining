import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:git_search_api/model/repository.dart';
import 'package:git_search_api/permitInvalid_certification.dart';
import 'package:http/http.dart' as http;

Future<Repository> fetchRepository(search) async {

  var url = Uri.parse('https://api.github.com/search/repositories?q=$search');
  http.Response response = await http.get(url);

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Repository>((json) => Repository.fromJson(json));
  } else {
    throw Exception('Failed to load repository');
  }
}
