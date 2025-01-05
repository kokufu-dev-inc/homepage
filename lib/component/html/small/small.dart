import 'package:flutter/material.dart';
import 'package:homepage/component/kokufu_text.dart';
import 'package:homepage/theme/kokufu_font.dart';

class Small extends StatelessWidget {
  const Small(
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
      fontSize: KokufuFontSize.small,
      color: color,
      textAlign: textAlign,
      fontWeight: fontWeight,
      textHeight: 1.9,
      padding: padding,
      margin: margin,
    );
  }
}
