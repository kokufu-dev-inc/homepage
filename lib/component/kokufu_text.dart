import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme/kokufu_font.dart';

// ignore: must_be_immutable
class KokufuText extends StatelessWidget {
  KokufuText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.textAlign = TextAlign.left,
    this.fontWeight,
    this.textHeight,
    this.padding,
    this.margin,
  });

  late BuildContext context;
  final String text;
  final double fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? textHeight;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  double get _fontSize {
    return KokufuFontSize.responsive(
      screenWidth: MediaQuery.of(context).size.width,
      defaultSize: fontSize,
    );
  }

  EdgeInsets get _margin {
    return margin ?? EdgeInsets.only(bottom: _fontSize * 0.3);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Container(
      margin: _margin,
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: _fontSize,
          fontFamilyFallback: KokufuFontfamily.fontFamilyFallback,
          color: color,
          fontWeight: fontWeight,
          height: textHeight,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
