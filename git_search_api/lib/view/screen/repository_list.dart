import 'package:flutter/material.dart';

class RepositoryList extends StatelessWidget {
  const RepositoryList(this.searchText, {Key? key}) : super(key: key);
  final String searchText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(searchText),
    );
  }
}
