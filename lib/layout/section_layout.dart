import 'package:flutter/material.dart';

class SectionLayout extends StatelessWidget {
  const SectionLayout({
    super.key,
    this.verticalPadding = 40,
    required this.child,
  });

  final Widget child;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: child,
    );
  }
}
