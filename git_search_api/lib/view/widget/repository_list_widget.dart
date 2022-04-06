import 'package:flutter/material.dart';
import 'package:git_search_api/model/items.dart';

class RepositoryListWidget extends StatelessWidget {
  const RepositoryListWidget(this.item, {Key? key}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Card(
        elevation: 8,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                item.owner.avatarUrl!,
              ),
              title: Text(item.fullName),
              subtitle: Visibility(
                visible: item.language.toString().isNotEmpty,
                child: Text(item.language.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
