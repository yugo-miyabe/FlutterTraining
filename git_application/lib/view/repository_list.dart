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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.login),
      ),
      body: Center(
        child: FutureBuilder<List<Repository>>(
          future: futureRepositoryList,
          builder: (context, response) {
            if (response.hasData) {
              return ListView.builder(
                  itemCount: response.data?.length,
                  itemBuilder: (context, index) {
                    return _listItem(response.data![index]);
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

Widget _listItem(Repository repository) {
  return GestureDetector(
    child: Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.blueGrey))),
      child: Row(
        children: [
          const Icon(
            Icons.star_border,
            color: Colors.yellow,
            size: 40.0,
          ),
          Column(
            children: [
              Text(
                '作成日時: ' '${repository.createdAt}',
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                '最終更新日時: ' '${repository.updatedAt}',
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                repository.name,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          Text(
            repository.stargazersCount.toString(),
          )
        ],
      ),
    ),
  );
}
