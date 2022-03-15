import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter Demo")),
          body: Column(
            children: [
              Text("初めてのテキスト"),
              Text("2番目ののテキスト"),
              TextButton(child: Text("更新"), onPressed: () => {print("ボタン押下")})
            ],
          )),
    );
  }
}
