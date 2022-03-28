import 'package:flutter/material.dart';
import 'package:git_search_api/model/repository.dart';
import 'package:git_search_api/repository/get_repository_request.dart';

class RepositoryList extends StatefulWidget {
  const RepositoryList(this.searchText, {Key? key}) : super(key: key);
  final String searchText;

  @override
  State<RepositoryList> createState() => _RepositoryListState();
}

class _RepositoryListState extends State<RepositoryList> {
  late Future<Repository> futureRepository;

  @override
  void initState() {
    super.initState();
    futureRepository = fetchRepository(widget.searchText);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.searchText),
    );
  }
}
