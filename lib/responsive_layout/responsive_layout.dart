import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key, required this.webS, required this.webM, required this.webL});

  final Widget webS;
  final Widget webM;
  final Widget webL;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > ScreenSize.width.webL) {
      return webL;
    } else if (screenWidth > ScreenSize.width.webM) {
      return webM;
    }
    return webS;
  }
}
