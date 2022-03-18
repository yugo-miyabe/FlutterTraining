import 'package:flutter/material.dart';
import 'package:inherited_widget/my_inherited_widget.dart';
import 'package:inherited_widget/widget_a.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // InheritedWidgetが間に挟まり、childでScaffoldを指定している
    return MyInheritedWidget(
        message: "I am InheritedWidget",
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title!),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Container->Center->Row->Column->WidgetAの階層で呼び出す
                // 階層を深くしたいだけなので、Container~Columnまでに意味はなし
                Container(
                    child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [WidgetA()])
                    ]))),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
