import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class H1 extends StatelessWidget {
  const H1({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: KokufuFontfamily.fontfamily(
          fontSize: KokufuFontsize.h1S, color: color),
    );
  }
}
