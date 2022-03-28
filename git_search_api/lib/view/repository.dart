import 'package:flutter/material.dart';

class Repository extends StatefulWidget {
  const Repository({Key? key}) : super(key: key);

  @override
  State<Repository> createState() => _RepositoryState();
}

class _RepositoryState extends State<Repository> {
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
              print(searchText);
            },
            child: const Text('Search'),
          )
        ],
      ),
    );
  }
}

/*
class Repository extends StatelessWidget {
  const Repository({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String searchText;

    return Container(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (text){
            },
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Search'),
          )
        ],
      ),
    );
  }
}

 */
