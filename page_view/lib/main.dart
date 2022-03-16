import 'package:flutter/material.dart';
import 'package:page_view/TestPage1.dart';
import 'package:page_view/TestPage2.dart';
import 'package:page_view/TestPage3.dart';

void main() {
  runApp(MyApp());
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int _selectedIndex = 0;

  var _pages = [
    TestPage1(),
    TestPage2(),
    TestPage3(),
  ];

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
