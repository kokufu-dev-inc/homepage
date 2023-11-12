import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight - 80,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.shade900.withOpacity(0.1), BlendMode.color),
              fit: BoxFit.fitWidth,
              image: const AssetImage(Images.firstviewBlack))),
      child: DefaultTextStyle(
        style: GoogleFonts.courierPrime(),
        child: Container(
          width: 720,
          height: 290,
          padding: const EdgeInsets.all(20),
          color: Colors.white.withOpacity(0.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Column(
                  children: [
                    H2(
                      text: '最高のユーザー体験を提供するため',
                    ),
                    H2(text: 'お客様と共に寄り添って創り上げます')
                  ],
                ),
              ),
              const P(
                text:
                    'スマホアプリを開発する目的を達成することに重きをおき、「本当に喜ばれるアプリとは何か」を常に考えて、お客様と共にプロダクトを創り上げていきます。',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
