import 'package:flutter/material.dart';

class Repository extends StatelessWidget {
  const Repository({Key? key}) : super(key: key);

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
              // TODO null　対応
              print(searchText);
            },
            child: const Text('Search'),
          )
        ],
      ),
    );
  }
}
