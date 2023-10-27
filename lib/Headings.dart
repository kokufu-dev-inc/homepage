import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class P extends StatelessWidget {
  const P({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS, color: color),
    );
  }
}

// ignore: must_be_immutable
class H1 extends StatelessWidget {
  H1({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.courierPrime(fontSize: KokufuFontsize.h1S, color: color),
    );
  }
}

class H2 extends StatelessWidget {
  const H2({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.courierPrime(fontSize: KokufuFontsize.h2S, color: color),
    );
  }
}

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
