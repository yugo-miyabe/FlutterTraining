import 'package:flutter/material.dart';
import 'package:git_search_api/view/screen/repository_list.dart';

class RepositoryWidget extends StatefulWidget {
  const RepositoryWidget({Key? key}) : super(key: key);

  @override
  State<RepositoryWidget> createState() => _RepositoryWidgetState();
}

class _RepositoryWidgetState extends State<RepositoryWidget> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            maxLength: 15,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (String text) {
              setState(() {
                searchText = text;
              });
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            child: const Text('Search'),
            onPressed: searchText.isNotEmpty
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RepositoryList(searchText),
                      ),
                    );
                  }
                : null,
          ),
        ],
      ),
    );
  }
}
