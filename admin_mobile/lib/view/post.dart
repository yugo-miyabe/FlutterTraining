import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String name;
  final String message;
  final String textReason;
  final Color colorPrimary;
  final Color colorPositive;
  final String textPositive;
  final Color colorNegative;
  final String textNegative;

  const Post({
    required this.name,
    required this.message,
    required this.textReason,
    required this.colorPrimary,
    required this.colorPositive,
    required this.textPositive,
    required this.colorNegative,
    required this.textNegative,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        //　影のサイズ
        elevation: 8,
        // 影のカラーを指定
        shadowColor: Colors.grey,
        // コーナー半径を指定
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            // タイトル部分
            ListTile(
              // leading...タイトルの前に表示するwidget
              // ClipOval...楕円形のwidget
              leading: ClipOval(
                child: Container(
                  color: colorPrimary,
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      // 先頭から1文字目を表示
                      name.substring(0, 1),
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              title: Text(name),
              subtitle: const Text('2 min ago'),
            ),
            // 説明部分の描画
            Container(
              // 左右のマージンを設定
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //　余白を配置
                  const SizedBox(width: 72),
                  Container(
                    width: 16,
                    height: 16,
                    // ボックスを描画
                    decoration: BoxDecoration(
                      // 枠線を指定
                      border: Border.all(color: colorPrimary, width: 4),
                      // 角の度合い
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  // 余白を配置
                  const SizedBox(width: 8),
                  // 余白に対して最大幅で表示
                  Flexible(child: Text(message)),
                ],
              ),
            ),
            // リンクの描画
            Container(
              // 内側の余白の設定
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              // 行表示
              child: Row(
                children: [
                  Container(
                    // アンダーライン
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: colorPrimary, width: 2),
                      ),
                    ),
                    // テキストの表示
                    child: Text(
                      textReason,
                      style: const TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  //　余白の設定
                  const SizedBox(width: 24),
                  // 余白いっぱいに表示
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: colorNegative,
                      ),
                      onPressed: () {},
                      child: Text(textNegative),
                    ),
                  ),
                  //　余白の設定
                  const SizedBox(width: 8),
                  // 余白いっぱいに表示
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: colorPositive,
                         // withOpacity.. 半透明
                        backgroundColor: colorPositive.withOpacity(0.2),
                      ),
                      onPressed: () {},
                      child: Text(textPositive),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
