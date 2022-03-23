import 'package:admin_mobile/view/post.dart';
import 'package:admin_mobile/data/post_green.dart';
import 'package:admin_mobile/data/post_red.dart';
import 'package:admin_mobile/view/posts_header.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const PostsHeader(),
          Expanded(
            child: ListView(
              children: const [
                PostGreen(),
                PostRed(),
                PostGreen(),
                PostRed(),
                PostGreen(),
                PostRed(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
