import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_study/user.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    //func();
    func2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void func() {
    // ユーザを3つ作成する。user1とuser3は同じ内容
    User user1 = User('kazutxt', 30);
    User user2 = User('kazutxt2', 32);
    User user3 = User('kazutxt', 30);

    // 表示(toString)
    print("check1");
    print(user1);

    // 比較(==)
    print("check2");
    if (user1 == user2) print("user1とuser2は同じ人");
    if (user1 == user3) print("user1とuser3は同じ人");

    // コピーをして新しいインスタンスを作成(user1は変わらない)
    print("check3");
    User user4 = user1.copyWith(name: "unknown");
    print(user1);
    print(user4);

    // 参照そのものを変えるのはOK
    print("check4");
    user2 = user3;
    print(user2);

    // immutableを破壊するので、以下のような使い方はNG
    // user1.name = "unknown";
  }

  void func2() {
    //String→Map→User
    String jsonString = '{"name":"kazutxt","age":30}';
    User fromJsonUser = User.fromJson(json.decode(jsonString));
    print(fromJsonUser);

    //User→Map→String
    User toJsonUser = User('kazutxt2', 32);
    Map<String, dynamic> jsonData = toJsonUser.toJson();
    print(jsonData);
  }
}
