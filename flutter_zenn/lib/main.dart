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
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.create),
              Text("初めてのタイトル"),
            ],
          ),
        ),
        drawer: Drawer(
          child: Center(
            child: Text("Drawer"),
          ),
        ),
        body: Text("初めてのテキスト"),
      ),
    );
  }
}
