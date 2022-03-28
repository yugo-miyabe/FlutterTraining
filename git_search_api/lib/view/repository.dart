import 'package:flutter/material.dart';

class Repository extends StatelessWidget {
  const Repository({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextField(
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Search'),
          )
        ],
      ),
    );
  }
}
