import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class H3 extends StatelessWidget {
  const H3({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: KokufuFontfamily.fontfamily(
          fontSize: KokufuFontsize.h3S, color: color),
    );
  }
}
