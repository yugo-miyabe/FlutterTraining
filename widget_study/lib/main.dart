import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: RichText(
        text: const TextSpan(text: 'Hello World'),
        textDirection: TextDirection.ltr,
      ),
    ),
  );

  runApp(
    Center(
      child: RichText(
        text: const TextSpan(text: 'FugaFuga'),
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
