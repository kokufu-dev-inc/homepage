import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/component/html/small/small.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      width: double.infinity,
      color: Colors.black87,
      alignment: Alignment.center,
      child: Column(
        children: [
          const P(
            '株式会社国富開発（Kokufu.dev）',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            margin: EdgeInsets.zero,
          ),
          Small(
            '© 2023 kokufu.dev Inc. All Right Reserved.',
            color: Colors.grey.shade500,
            margin: EdgeInsets.zero,
          )
        ],
      ),
    );
  }
}
