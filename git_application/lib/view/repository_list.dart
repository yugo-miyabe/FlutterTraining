import 'package:flutter/material.dart';
import 'package:git_application/model/repository.dart';
import 'package:git_application/repository/repository_request.dart';

class RepositoryList extends StatefulWidget {
  const RepositoryList(this.login, {Key? key}) : super(key: key);
  final String login;

  @override
  State<RepositoryList> createState() => _RepositoryListState();
}

class _RepositoryListState extends State<RepositoryList> {
  late Future<List<Repository>> futureRepositoryList;

  @override
  void initState() {
    super.initState();
    futureRepositoryList = fetchRepository(widget.login);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
