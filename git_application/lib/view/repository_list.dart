import 'package:flutter/material.dart';
import 'package:git_application/model/repository.dart';
import 'package:git_application/repository/repository_request.dart';
import 'package:git_application/view/repository_list_item.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.login + ' repository list'),
      ),
      body: Center(
        child: FutureBuilder<List<Repository>>(
          future: futureRepositoryList,
          builder: (context, response) {
            if (response.hasData) {
              return ListView.builder(
                  itemCount: response.data?.length,
                  itemBuilder: (context, index) {
                    return RepositoryListItem(response.data![index]);
                  });
            } else if (response.hasError) {
              return Text('${response.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
