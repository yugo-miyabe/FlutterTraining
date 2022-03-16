import 'package:flutter/material.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test1"),
        ),
        body: Center(
            child: Container(
                color: Colors.green,
                child: Text("Test1", style: TextStyle(fontSize: 80)))));
  }
}
