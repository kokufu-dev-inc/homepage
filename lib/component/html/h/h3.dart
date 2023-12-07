import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/kokufu_text.dart';
import 'package:flutter_test_app/theme/kokufu_font.dart';

class H3 extends StatelessWidget {
  const H3(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.padding,
    this.margin,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return KokufuText(
      text: text,
      fontSize: KokufuFontSize.h3,
      color: color,
      textAlign: textAlign,
      fontWeight: fontWeight,
      padding: padding,
      margin: margin,
    );
  }
}
