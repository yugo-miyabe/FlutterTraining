import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'MainAxisAlignment',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // <= 今回のターゲット
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.orange,
                  child: Text(
                    'First',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  child: Text(
                    'Second',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    'Third',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
