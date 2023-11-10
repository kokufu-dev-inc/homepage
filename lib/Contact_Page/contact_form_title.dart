import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactFormTitle extends StatelessWidget {
  const ContactFormTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.4,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.blue.shade900.withOpacity(0.1),
            BlendMode.color,
          ),
          fit: BoxFit.fitWidth,
          image: const AssetImage(Images.firstviewBlack),
        ),
      ),
      child: DefaultTextStyle(
        style: GoogleFonts.courierPrime(),
        child: Container(
          width: 720,
          height: 290,
          padding: const EdgeInsets.all(20),
          color: Colors.white.withOpacity(0.9),
          child: const Center(
            child: H2(text: 'お問い合わせ'),
          ),
        ),
      ),
    );
  }
}
