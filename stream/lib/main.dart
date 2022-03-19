import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stream/BussinessLogic.dart';

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

  /// int型のStream
  var intStream = StreamController<int>();

  // StreamControllerにbroadcastをつけて複数のlistenに対応させる
  /// String型のStream
  var stringStream = StreamController<String>.broadcast();

  var generator = Generator();
  var coordinator = Coordinator();
  var consumer = Consumer();

  void _incrementCounter() {
    generator.generate();
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    generator.init(intStream);
    coordinator.init(intStream, stringStream);
    consumer.init(stringStream);
    coordinator.coordinate();
    consumer.consume();
  }

  @override
  void dispose() {
    super.dispose();
    intStream.close();
    stringStream.close();
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
            //　Streamの結果を表示
            StreamBuilder<String>(
              // stringStreamの値を監視
              stream: stringStream.stream,
              // 初期値
              initialData: "",
              //
              builder: (context, snapshot) {
                //　TextのUIを作成
                return Text(
                  'RANDOM : ${snapshot.data}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
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
}
