import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ToContactPage extends StatelessWidget {
  const ToContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const H3(text: 'お問い合わせ')),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: H1(text: 'CONTACT')),
            const P(text: 'お問い合わせやご依頼は、お気軽に以下のフォームからご連絡ください。'),
            Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const P(text: '一週間以内に返信いたします。')),
            ElevatedButton(
              onPressed: () {
                context.push('/contact_view');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.black, width: 1),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const P(
                  text: 'お問い合わせはこちら',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
