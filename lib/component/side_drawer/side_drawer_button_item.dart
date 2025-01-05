import 'package:flutter/material.dart';
import 'package:homepage/component/html/p/p.dart';
import 'package:homepage/component/html/small/extra_small.dart';

class SideDrawerButtonItem extends StatelessWidget {
  const SideDrawerButtonItem({
    required this.title,
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 24,
        ),
        child: Column(
          children: [
            P(
              title,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              margin: EdgeInsets.zero,
            ),
            ExtraSmall(
              label,
              color: Colors.black,
              margin: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
