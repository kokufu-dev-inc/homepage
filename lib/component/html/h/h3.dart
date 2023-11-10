import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class H3 extends StatelessWidget {
  const H3({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.courierPrime(fontSize: KokufuFontsize.h3S, color: color),
    );
  }
}
