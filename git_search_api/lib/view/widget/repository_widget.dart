import 'package:flutter/material.dart';
import 'package:git_search_api/view/screen/repository_list.dart';

class RepositoryWidget extends StatelessWidget {
  const RepositoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? searchText;

    return Container(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (String search) {
              searchText = search;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // TODO nullの場合入力エラーを出す
              // TODO 共通化
              print(searchText);
              if (searchText != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RepositoryList(searchText!),
                  ),
                );
              }
            },
            child: const Text('Search'),
          )
        ],
      ),
    );
  }
}
