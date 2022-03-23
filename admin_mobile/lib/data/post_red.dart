import 'package:admin_mobile/view/post.dart';
import 'package:flutter/material.dart';

class PostRed extends StatelessWidget {
  const PostRed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Post(
      name: 'Namaga Tema',
      message: 'Not recomended for publication.',
      textReason: 'Pending Reason',
      colorPrimary: Colors.deepOrangeAccent,
      colorPositive: Colors.blueAccent,
      textPositive: 'Publish',
      colorNegative: Colors.deepOrangeAccent,
      textNegative: 'Decline',
    );
  }
}
