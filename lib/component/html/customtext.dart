import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize = 18,
  });

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: KokufuFontfamily.fontfamily(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
