import 'package:flutter/material.dart';
import 'package:homepage/theme/theme.dart';

enum ResponsiveSize {
  s,
  m,
  l,
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.s,
    required this.m,
    required this.l,
  });

  final Widget s;
  final Widget m;
  final Widget l;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > ScreenSize.width.webL) {
      return l;
    } else if (screenWidth > ScreenSize.width.webM) {
      return m;
    }
    return s;
  }
}
