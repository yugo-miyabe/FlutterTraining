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
              TextButton(
                child: Text("更新"),
                onPressed: () => {print("ボタン押下")},
              ),
              Row(
                //spaceAround...並べた子の間に空きスペースを均等に配置する。
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 36.0,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
