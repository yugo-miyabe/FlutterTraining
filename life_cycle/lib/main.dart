import 'package:flutter/material.dart';
import 'package:life_cycle/DummyPage.dart';

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
      print("call setState");
      _counter++;
    });
    nextpage();
  }

  // ダミーで画面遷移を行う
  void nextpage() async {
    {
      // ダミー画面へ遷移
      await Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return DummyPage();
      }));
    }
  }

  /// Widgetツリーの初期化を行う
  /// 一度だけ呼ばれる
  @override
  void initState() {
    print("call initState");
    super.initState();
  }

  /// stateオブジェクトの依存関係が変更されたときに呼び出される
  /// initStateの後に呼ばれるが、それ以外にも呼ばれることはある
  @override
  void didChangeDependencies() {
    print("call didChangeDependencies");
    super.didChangeDependencies();
  }

  /// Widgetで作られるUIを構築する
  /// setState等で状態が変更されたときに呼ばれる
  /// 変更がある部分ツリーを検知して置き換える
  @override
  Widget build(BuildContext context) {
    print("call build");
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
        key: Key('increment'),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  /// ウィジェットの構成が変更されるたびに呼び出される
  /// 親Widgetが変更され、再描画する必要があるときに呼び出される
  /// oldWidgetパラメータを取得して比較する
  @override
  void didUpdateWidget(oldWidget) {
    print("call didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  /// stateオブジェクトがツリーから削除するたびに呼び出される
  @override
  void deactivate() {
    print("call deactivate");
    super.deactivate();
  }

  /// オブジェクトがツリーから完全に削除され、2度とビルドされなくなったら呼ばれる
  @override
  void dispose() {
    print("call dispose");
    super.dispose();
  }
}
