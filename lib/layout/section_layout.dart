import 'package:flutter/material.dart';

class SectionLayout extends StatelessWidget {
  const SectionLayout({
    super.key,
    this.verticalPadding = 40,
    required this.child,
    this.width = double.infinity,
  });

  final Widget child;
  final double verticalPadding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: child,
    );
  }
}
