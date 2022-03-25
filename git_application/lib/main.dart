import 'package:flutter/material.dart';
import 'package:git_application/repository/git_user_requset.dart';
import 'package:git_application/model/user.dart';
import 'package:git_application/view/repository_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<User>> futureGitUser;

  @override
  void initState() {
    super.initState();
    futureGitUser = fetchGitUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: futureGitUser,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  // TODO　null許容で良いか確認
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          // TODO　nullのキャスト対応
                          MaterialPageRoute(
                              builder: (context) =>
                                  RepositoryList(snapshot.data![index].login)),
                        );
                      },
                      child: Card(
                        //　影のサイズ
                        elevation: 8,
                        // 影のカラーを指定
                        shadowColor: Colors.grey,
                        // コーナー半径を指定
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Image.network(
                              // TODO　nullのキャスト対応
                              snapshot.data![index].avatar_url,
                              width: 100,
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                // TODO　nullのキャスト対応
                                snapshot.data![index].login,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // ローディングのスピナーを表示
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
