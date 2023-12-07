import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/p/p.dart';

class SideDrawerButtonItem extends StatelessWidget {
  const SideDrawerButtonItem({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        child: P(
          label,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          margin: EdgeInsets.zero,
        ),
      ),
    );
  }
}
