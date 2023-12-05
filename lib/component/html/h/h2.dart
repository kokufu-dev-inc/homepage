import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class H2 extends StatelessWidget {
  const H2({
    super.key,
    required this.text,
    this.color,
    this.textAlign = TextAlign.left,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: KokufuFontfamily.fontfamily(
        fontSize: responsiveFontSizeH2(screenWidth),
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
