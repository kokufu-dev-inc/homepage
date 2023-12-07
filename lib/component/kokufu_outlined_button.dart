import 'package:flutter/material.dart';

class KokufuOutlinedButton extends StatelessWidget {
  const KokufuOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.black, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          // padding: const EdgeInsets.only(top: 14, bottom: 8),
          child: child,
        ),
      ),
    );
  }
}
