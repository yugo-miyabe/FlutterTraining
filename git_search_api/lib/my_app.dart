import 'dart:io';

import 'package:flutter/material.dart';
import 'package:git_search_api/permitInvalid_certification.dart';
import 'package:git_search_api/view/screen/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = PermitInvalidCertification();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
