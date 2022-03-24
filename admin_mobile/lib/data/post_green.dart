import 'package:admin_mobile/view/post.dart';
import 'package:flutter/material.dart';

class PostGreen extends StatelessWidget {
  const PostGreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Post(
      name: 'Pean',
      message: 'Weak reason. No action required.',
      textReason: 'Report Details',
      colorPrimary: Colors.greenAccent,
      colorPositive: Colors.greenAccent,
      textPositive: 'Keep',
      colorNegative: Colors.blueAccent,
      textNegative: 'Archive',
    );
  }
}
