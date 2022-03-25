import 'package:flutter/material.dart';
import 'package:git_application/model/repository.dart';
import 'package:git_application/view/web_view_screen.dart';

class RepositoryListItem extends StatelessWidget {
  const RepositoryListItem(this.repository, {Key? key}) : super(key: key);
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Card(
        elevation: 8,
        shadowColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                  color: Colors.grey,
                  width: 38,
                  height: 38,
                  child: Center(
                    child: Text(
                      repository.fullName.substring(0, 1),
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              title: Text(
                repository.name,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 50),
              margin: const EdgeInsets.all(5),
              child: Text('作成日時:' + repository.createdAt),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 50),
              margin: const EdgeInsets.all(5),
              child: Text('最終更新日:' + repository.updatedAt),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<WebViewScreen>(
                    builder: (context) => WebViewScreen(repository.htmlUrl),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: Text(
                  repository.htmlUrl,
                  style: const TextStyle(color: Colors.cyan),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
