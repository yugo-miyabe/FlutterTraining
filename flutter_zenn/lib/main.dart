import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    saveFlag(true);
  }

  saveFlag(bool flag) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('FLAG', flag);
  }

  loadFlag() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('FLAG') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.open_in_browser_sharp),
          onPressed: () async {
            String url = Uri.encodeFull("https://www.google.co.jp");
            if (await canLaunch(url)) {
              await launch(url);
            }
          },
        ),
      ),
    );
  }
}
