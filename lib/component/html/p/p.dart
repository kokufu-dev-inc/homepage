import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class P extends StatelessWidget {
  const P(
      {super.key,
      required this.text,
      this.color,
      this.textAlign = TextAlign.left});

  final String text;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: KokufuFontfamily.fontfamily(
        fontSize: KokufuFontsize.p,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
