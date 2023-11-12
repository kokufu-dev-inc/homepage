import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        padding: const EdgeInsets.all(70),
        width: double.infinity,
        color: Colors.black87,
        alignment: Alignment.center,
        child: Column(
          children: [
            const P(
              text: '株式会社国富開発（Kokufu.dev）',
              color: Colors.white,
            ),
            Text(
              '© 2021 STUDIO Inc. All Right Reserved.',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
